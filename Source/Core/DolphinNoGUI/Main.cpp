// Copyright 2008 Dolphin Emulator Project
// SPDX-License-Identifier: GPL-2.0-or-later

#include "DolphinNoGUI/Platform.h"

#include <OptionParser.h>
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <signal.h>
#include <string>
#include <vector>

#ifndef _WIN32
#include <unistd.h>
#else
#include <Windows.h>
#endif

#ifdef __SWITCH__
#include <arpa/inet.h>
#include <switch.h>
#include <sys/socket.h>
#include "Common/Logging/LogManager.h"
#endif

#include "Common/ScopeGuard.h"
#include "Common/StringUtil.h"
#include "Core/Boot/Boot.h"
#include "Core/BootManager.h"
#include "Core/Core.h"
#include "Core/DolphinAnalytics.h"
#include "Core/Host.h"

#include "UICommon/CommandLineParse.h"
#ifdef USE_DISCORD_PRESENCE
#include "UICommon/DiscordPresence.h"
#endif
#include "UICommon/UICommon.h"

#include "InputCommon/GCAdapter.h"

#include "VideoCommon/VideoBackendBase.h"


#include "DolphinNoGUI/Platform.h"


// Глобальные переменные
static std::unique_ptr<Platform> s_platform;

// Объявления функций
// static std::unique_ptr<Platform> GetPlatform(const optparse::Values& options);e
static void signal_handler(int);

int main(int argc, char* argv[])
{
#ifdef __SWITCH__
    consoleDebugInit(debugDevice_SVC);
    socketInitializeDefault();
    inet_pton(AF_INET, "192.168.0.38", &__nxlink_host);
    nxlinkStdio();

    // Путь к ROM'у
    const char* rom_path = "sdmc:/switch/dolphin-emu/roms/test.dol";
    
    // Проверяем существование файла
    FILE* f = fopen(rom_path, "rb");
    if (!f) {
        printf("Error: ROM not found at: %s\n", rom_path);
        return 1;
    }
    fclose(f);

    char* arguments[] = {"dolphin-emu", "--exec", (char*)rom_path};
    argv = arguments;
    argc = sizeof(arguments) / sizeof(arguments[0]);
    
    printf("Starting Dolphin with ROM: %s\n", rom_path);
#endif

    auto parser = CommandLineParse::CreateParser(CommandLineParse::ParserOptions::OmitGUIOptions);
    optparse::Values& options = CommandLineParse::ParseArguments(parser.get(), argc, argv);
    std::vector<std::string> args = parser->args();

    std::optional<std::string> save_state_path;
    if (options.is_set("save_state"))
    {
        save_state_path = static_cast<const char*>(options.get("save_state"));
    }

    std::unique_ptr<BootParameters> boot;
    bool game_specified = false;

    if (options.is_set("exec"))
    {
        const std::string exec_str = static_cast<const char*>(options.get("exec"));
        boot = BootParameters::GenerateFromFile(
            exec_str, BootSessionData(save_state_path, DeleteSavestateAfterBoot::No));
        game_specified = true;
    }
    else if (options.is_set("nand_title"))
    {
        const std::string hex_string = static_cast<const char*>(options.get("nand_title"));
        if (hex_string.length() != 16)
        {
            fprintf(stderr, "Invalid title ID\n");
            parser->print_help();
            return 1;
        }
        const u64 title_id = std::stoull(hex_string, nullptr, 16);
        boot = std::make_unique<BootParameters>(BootParameters::NANDTitle{title_id});
    }
    else if (args.size())
    {
        boot = BootParameters::GenerateFromFile(
            args.front(), BootSessionData(save_state_path, DeleteSavestateAfterBoot::No));
        args.erase(args.begin());
        game_specified = true;
    }
    else
    {
        parser->print_help();
        return 0;
    }

    std::string user_directory;
    if (options.is_set("user"))
        user_directory = static_cast<const char*>(options.get("user"));

    s_platform = GetSwitchPlatform(options);
    if (!s_platform || !s_platform->Init())
    {
        fprintf(stderr, "No platform found, or failed to initialize.\n");
        return 1;
    }

    const WindowSystemInfo wsi = s_platform->GetWindowSystemInfo();

    UICommon::SetUserDirectory(user_directory);
    UICommon::Init();
    UICommon::InitControllers(wsi);

#ifdef __SWITCH__
    auto* const log_manager = Common::Log::LogManager::GetInstance();
    log_manager->SetLogLevel(Common::Log::LogLevel::LDEBUG);
#endif

    Common::ScopeGuard ui_common_guard([] {
        UICommon::ShutdownControllers();
        UICommon::Shutdown();
    });

    if (save_state_path && !game_specified)
    {
        fprintf(stderr, "A save state cannot be loaded without specifying a game to launch.\n");
        return 1;
    }

    Core::AddOnStateChangedCallback([](Core::State state) {
        if (state == Core::State::Uninitialized)
            s_platform->Stop();
    });

    DolphinAnalytics::Instance().ReportDolphinStart("nogui");

    if (!BootManager::BootCore(std::move(boot), wsi))
    {
        fprintf(stderr, "Could not boot the specified file\n");
        return 1;
    }

    s_platform->MainLoop();
    Core::Stop();

    Core::Shutdown();
    s_platform.reset();

    return 0;
}