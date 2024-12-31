#include "DolphinNoGUI/Platform.h"
#include "DolphinNoGUI/Platform.h"
#include "Core/Boot/Boot.h"
#include "Core/Config/MainSettings.h"
#include "Core/Core.h"
#include "Core/BootManager.h"
#include "UICommon/UICommon.h"
#include "UICommon/CommandLineParse.h"
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

static std::unique_ptr<Platform> s_platform;
#ifdef __SWITCH__
static char log_buffer[2048] = {0};
static int log_pos = 0;

void Log(const char* format, ...) {
    va_list args;
    va_start(args, format);
    char temp[1024];
    vsnprintf(temp, sizeof(temp), format, args);
    va_end(args);
    
    log_pos += snprintf(log_buffer + log_pos, sizeof(log_buffer) - log_pos, "%s\n", temp);
    printf("\x1b[1;1H%s", log_buffer);
    svcSleepThread(100000000ULL);
}
#endif

static void signal_handler(int)
{
    const char message[] = "A signal was received. A second signal will force Dolphin to stop.\n";
#ifdef _WIN32
    puts(message);
#else
    if (write(STDERR_FILENO, message, sizeof(message)) < 0)
    {
    }
#endif

    s_platform->RequestShutdown();
}

std::vector<std::string> Host_GetPreferredLocales()
{
    return {};
}

void Host_NotifyMapLoaded()
{
}

void Host_RefreshDSPDebuggerWindow()
{
}

bool Host_UIBlocksControllerState()
{
    return false;
}

static Common::Event s_update_main_frame_event;
void Host_Message(HostMessageID id)
{
    if (id == HostMessageID::WMUserStop)
        s_platform->Stop();
}

void Host_UpdateTitle(const std::string& title)
{
    s_platform->SetTitle(title);
}

void Host_UpdateDisasmDialog()
{
}

void Host_UpdateMainFrame()
{
    s_update_main_frame_event.Set();
}

void Host_RequestRenderWindowSize(int width, int height)
{
}

bool Host_RendererHasFocus()
{
    return s_platform->IsWindowFocused();
}

bool Host_RendererHasFullFocus()
{
    // Mouse capturing isn't implemented
    return Host_RendererHasFocus();
}

bool Host_RendererIsFullscreen()
{
    return s_platform->IsWindowFullscreen();
}

void Host_YieldToUI()
{
}

void Host_TitleChanged()
{
#ifdef USE_DISCORD_PRESENCE
    Discord::UpdateDiscordPresence();
#endif
}

void Host_UpdateDiscordClientID(const std::string& client_id)
{
#ifdef USE_DISCORD_PRESENCE
    Discord::UpdateClientID(client_id);
#endif
}

bool Host_UpdateDiscordPresenceRaw(const std::string& details, const std::string& state,
                                   const std::string& large_image_key,
                                   const std::string& large_image_text,
                                   const std::string& small_image_key,
                                   const std::string& small_image_text,
                                   const int64_t start_timestamp, const int64_t end_timestamp,
                                   const int party_size, const int party_max)
{
#ifdef USE_DISCORD_PRESENCE
    return Discord::UpdateDiscordPresenceRaw(details, state, large_image_key, large_image_text,
                                           small_image_key, small_image_text, start_timestamp,
                                           end_timestamp, party_size, party_max);
#else
    return false;
#endif
}

std::unique_ptr<GBAHostInterface> Host_CreateGBAHost(std::weak_ptr<HW::GBA::Core> core)
{
    return nullptr;
}

static std::unique_ptr<Platform> GetPlatform(const optparse::Values& options)
{
    std::string platform_name = static_cast<const char*>(options.get("platform"));

#if HAVE_X11
    if (platform_name == "x11" || platform_name.empty())
    return Platform::CreateX11Platform();
#endif

#ifdef __linux__
    if (platform_name == "fbdev" || platform_name.empty())
    return Platform::CreateFBDevPlatform();
#endif

#ifdef _WIN32
    if (platform_name == "win32" || platform_name.empty())
    return Platform::CreateWin32Platform();
#endif

    if (platform_name == "headless" || platform_name.empty())
        return Platform::CreateHeadlessPlatform();

    return nullptr;
}

#ifdef _WIN32
#define main app_main
#endif

int main(int argc, char* argv[])
{
#ifdef __SWITCH__
    // Инициализация для Switch
    consoleDebugInit(debugDevice_SVC);
    socketInitializeDefault();
    inet_pton(AF_INET, "192.168.1.38", &__nxlink_host);
    nxlinkStdio();

    Log("MainNoGUI: HERERERERE");
    // Задаем путь к ROM'у
    const char* rom_path = "sdmc:/switch/dolphin/roms/bd2.iso";
    
    // Проверяем существование файла
    FILE* f = fopen(rom_path, "rb");
    if (!f) {
        printf("Error: ROM not found at: %s\n", rom_path);
        consoleUpdate(NULL);
        return 1;
    }
    printf("ROM file found\n");
    fclose(f);
    
    // Создаем новые аргументы
    char* new_argv[] = {
        "dolphin-emu",
        "-e",
        (char*)rom_path
    };
    
    // Обновляем argc и argv
    argc = sizeof(new_argv) / sizeof(new_argv[0]);
    argv = new_argv;
    
    Log("Starting with ROM: %s\n", rom_path);
#endif

    Log("Creating command line parser...\n");
    auto parser = CommandLineParse::CreateParser(CommandLineParse::ParserOptions::OmitGUIOptions);
    Log("Parsing arguments...\n");
    optparse::Values& options = CommandLineParse::ParseArguments(parser.get(), argc, argv);
    std::vector<std::string> args = parser->args();

    std::unique_ptr<BootParameters> boot;
    bool game_specified = false;

    Log("Checking exec option...\n");
    if (options.is_set("exec")) {
        const std::string exec_str = static_cast<const char*>(options.get("exec"));
        printf("Generating boot parameters for: %s\n", exec_str.c_str());
        boot = BootParameters::GenerateFromFile(exec_str);
        game_specified = true;
    }

    printf("Setting up user directory...\n");
    std::string user_directory;
    if (options.is_set("user")) {
        user_directory = static_cast<const char*>(options.get("user"));
    }
#ifdef __SWITCH__
    else {
        user_directory = "sdmc:/switch/dolphin-emu/";
    }
#endif

    Log("Creating platform...\n");
    s_platform = Platform::CreateHeadlessPlatform();
    if (!s_platform || !s_platform->Init()) {
        printf("Failed to initialize platform\n");
        return 1;
    }

    Log("Getting window system info...\n");
    const WindowSystemInfo wsi = s_platform->GetWindowSystemInfo();
    
    printf("Initializing UI Common...\n");
    UICommon::SetUserDirectory(user_directory);
    UICommon::Init();
    UICommon::InitControllers(wsi);

    Log("Booting core...\n");
    if (!BootManager::BootCore(std::move(boot), wsi)) {
        printf("Could not boot the specified file\n");
        return 1;
    }
    Log("BEfore run mainloop...\n");
    s_platform->MainLoop();
    Core::Stop();
    Core::Shutdown();
    UICommon::Shutdown();
    s_platform.reset();

    return 0;
}

#ifdef _WIN32
int wmain(int, wchar_t*[], wchar_t*[])
{
  std::vector<std::string> args = Common::CommandLineToUtf8Argv(GetCommandLineW());
  const int argc = static_cast<int>(args.size());
  std::vector<char*> argv(args.size());
  for (size_t i = 0; i < args.size(); ++i)
    argv[i] = args[i].data();

  return main(argc, argv.data());
}

#undef main
#endif
