#include "Common/CommonTypes.h"
#include "Common/FileUtil.h"
#include "Common/Logging/LogManager.h"
#include "Core/Boot/Boot.h"
#include "Core/ConfigManager.h"
#include "Core/Core.h"
#include "Core/HW/Wiimote.h"
#include "Core/Host.h"
#include "Core/State.h"
#include "UICommon/UICommon.h"
#include "VideoCommon/VideoConfig.h"
#include "Core/System.h"
#include "SwitchUI.h"

#include <switch.h>
#include <cstdio>
#include <thread>
#include <sys/stat.h>
#include "Common/WindowSystemInfo.h"
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


  bool game_specified = false;
    std::unique_ptr<BootParameters> boot;

  std::optional<std::string> save_state_path;
static std::unique_ptr<Platform> s_platform;

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

// std::vector<std::string> Host_GetPreferredLocales()
// {
//   return {};
// }

// void Host_NotifyMapLoaded()
// {
// }

// void Host_RefreshDSPDebuggerWindow()
// {
// }

// bool Host_UIBlocksControllerState()
// {
//   return false;
// }

static Common::Event s_update_main_frame_event;
// void Host_Message(HostMessageID id)
// {
//   if (id == HostMessageID::WMUserStop)
//     s_platform->Stop();
// }

// void Host_UpdateTitle(const std::string& title)
// {
//   s_platform->SetTitle(title);
// }

// void Host_UpdateDisasmDialog()
// {
// }

// void Host_UpdateMainFrame()
// {
//   s_update_main_frame_event.Set();
// }

// void Host_RequestRenderWindowSize(int width, int height)
// {
// }

// bool Host_RendererHasFocus()
// {
//   return s_platform->IsWindowFocused();
// }

// bool Host_RendererHasFullFocus()
// {
//   // Mouse capturing isn't implemented
//   return Host_RendererHasFocus();
// }

// bool Host_RendererIsFullscreen()
// {
//   return s_platform->IsWindowFullscreen();
// }

// void Host_YieldToUI()
// {
// }

// void Host_TitleChanged()
// {
// #ifdef USE_DISCORD_PRESENCE
//   Discord::UpdateDiscordPresence();
// #endif
// }

// // void Host_UpdateDiscordClientID(const std::string& client_id)
// // {
// // #ifdef USE_DISCORD_PRESENCE
// //   Discord::UpdateClientID(client_id);
// // #endif
// // }

// bool Host_UpdateDiscordPresenceRaw(const std::string& details, const std::string& state,
//                                    const std::string& large_image_key,
//                                    const std::string& large_image_text,
//                                    const std::string& small_image_key,
//                                    const std::string& small_image_text,
//                                    const int64_t start_timestamp, const int64_t end_timestamp,
//                                    const int party_size, const int party_max)
// {
// #ifdef USE_DISCORD_PRESENCE
//   return Discord::UpdateDiscordPresenceRaw(details, state, large_image_key, large_image_text,
//                                            small_image_key, small_image_text, start_timestamp,
//                                            end_timestamp, party_size, party_max);
// #else
//   return false;
// #endif
// }

// std::unique_ptr<GBAHostInterface> Host_CreateGBAHost(std::weak_ptr<HW::GBA::Core> core)
// {
//   return nullptr;
// }

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

int myRun(int argc, char* argv[])
{
#ifdef __SWITCH__
  consoleDebugInit(debugDevice_SVC);
  socketInitializeDefault();
  inet_pton(AF_INET, "192.168.0.38", &__nxlink_host);
  /* Port 28771 (nc -kl 28771) */
  nxlinkStdio();

  char* arguments[] = {"dolphin-emu", "--exec", "/switch/dolphin-emu/test.dol"};

  argv = arguments;
  argc = sizeof(arguments) / sizeof(arguments[0]);
#endif

  auto parser = CommandLineParse::CreateParser(CommandLineParse::ParserOptions::OmitGUIOptions);
  parser->add_option("-p", "--platform")
      .action("store")
      .help("Window platform to use [%choices]")
      .choices({
        "headless"
#ifdef __linux__
            ,
            "fbdev"
#endif
#if HAVE_X11
            ,
            "x11"
#endif
#ifdef _WIN32
            ,
            "win32"
#endif
      });

  optparse::Values& options = CommandLineParse::ParseArguments(parser.get(), argc, argv);
  std::vector<std::string> args = parser->args();

  if (options.is_set("save_state"))
  {
    save_state_path = static_cast<const char*>(options.get("save_state"));
  }

  std::unique_ptr<BootParameters> boot;

  if (options.is_set("exec"))
  {
    const std::list<std::string> paths_list = options.all("exec");
    const std::vector<std::string> paths{std::make_move_iterator(std::begin(paths_list)),
                                         std::make_move_iterator(std::end(paths_list))};
    boot = BootParameters::GenerateFromFile(
        paths, BootSessionData(save_state_path, DeleteSavestateAfterBoot::No));
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

  s_platform = GetPlatform(options);
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

#ifdef _WIN32
  signal(SIGINT, signal_handler);
  signal(SIGTERM, signal_handler);
#elif !defined(__SWITCH__)
  // Shut down cleanly on SIGINT and SIGTERM
  struct sigaction sa;
  sa.sa_handler = signal_handler;
  sigemptyset(&sa.sa_mask);
  sa.sa_flags = SA_RESETHAND;
  sigaction(SIGINT, &sa, nullptr);
  sigaction(SIGTERM, &sa, nullptr);
#endif

  DolphinAnalytics::Instance().ReportDolphinStart("nogui");

  if (!BootManager::BootCore(std::move(boot), wsi))
  {
    fprintf(stderr, "Could not boot the specified file\n");
    return 1;
  }

#ifdef USE_DISCORD_PRESENCE
  Discord::UpdateDiscordPresence();
#endif

  s_platform->MainLoop();
  Core::Stop();

  Core::Shutdown();
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


void log_to_file(const char* message) {
    FILE* log_file = fopen("sdmc:/switch/dolphin-emu/dolphin-launcher.log", "a");
    if (log_file) {
        time_t now = time(NULL);
        char timestamp[26];
        ctime_r(&now, timestamp);
        timestamp[24] = '\0'; // Убираем перенос строки
        fprintf(log_file, "[%s] %s\n", timestamp, message);
        fclose(log_file);
    }
}

// Функция для проверки прав доступа к файлу
void checkFilePermissions(const char* path) {
    struct stat st;
    char log_buf[512];
    
    if (stat(path, &st) == 0) {
        snprintf(log_buf, sizeof(log_buf), 
                "File: %s\nSize: %lld bytes\nPermissions: %o\nUser ID: %d\nGroup ID: %d",
                path, (long long)st.st_size, st.st_mode & 0777, st.st_uid, st.st_gid);
        printf("%s\n", log_buf);
        log_to_file(log_buf);
        
        // Проверяем основные права
        if (st.st_mode & S_IRUSR) log_to_file("File is readable");
        if (st.st_mode & S_IWUSR) log_to_file("File is writable");
        if (st.st_mode & S_IXUSR) log_to_file("File is executable");
    } else {
        snprintf(log_buf, sizeof(log_buf), "Cannot get file stats for: %s", path);
        printf("%s\n", log_buf);
        log_to_file(log_buf);
    }
}

// Функция для логирования в файл


// Function to check if file exists
bool fileExists(const char* path) {
    FILE* file = fopen(path, "r");
    if (file) {
        fclose(file);
        return true;
    }
    return false;
}

const int KEY_X = 4;
const int KEY_Y = 28;
const int KEY_A = 5;
const int KEY_B = 27;
const int KEY_PLUS = 1024;
const int KEY_MINUS = 2048;

// Function to execute a command on Switch with arguments
bool executeCommand(const char* command, const char* args) {
    char full_command[PATH_MAX * 2];  // Достаточно места для команды и аргументов
    
    // Проверяем существование исполняемого файла
    if (!fileExists(command)) {
        printf("Error: Executable not found at path: %s\n", command);
        log_to_file("Error: Executable not found at path");
        return false;
    }

    // Формируем полную команду с аргументами
    if (args) {
        snprintf(full_command, sizeof(full_command), "%s %s", command, args);
    } else {
        snprintf(full_command, sizeof(full_command), "%s", command);
    }

    printf("Attempting to execute: %s\n", full_command);
    log_to_file(full_command);

    // Даем время консоли обновиться и логам записаться
    consoleUpdate(NULL);
    svcSleepThread(2000000000ULL); // Ждем 2 секунды перед запуском

    // Корректно завершаем текущие сервисы
    romfsExit();
    consoleExit(NULL);
    
    // На Switch используем envSetNextLoad
    // Аргументы нужно передавать как argv, разделяя их пробелами
    char argv[PATH_MAX];
    if (args) {
        snprintf(argv, sizeof(argv), "-e \"sdmc:/switch/dolphin-emu/roms/DeadSpace.iso\"");
    } else {
        argv[0] = '\0';
    }
    
    Result rc = envSetNextLoad(command, argv);
    
    // После этой точки программа может быть уже не выполнена
    return true; // Этот return может не выполниться
}

bool mainLoop() {
    printf("\n\n-------- Main Menu --------\n");
    printf("Press B to run dolpin emulator\n");
    printf("Press - to exit\n");
    log_to_file("Main menu started");

    padConfigureInput(1, HidNpadStyleSet_NpadStandard);
    PadState pad;
    padInitializeDefault(&pad);
    bool needToRun = false;
    char* args;
    char* dolphin_cmd;
            const char* rom_path = "sdmc:/switch/dolphin-emu/roms/DeadSpace.iso";
    while (appletMainLoop()) {
        // Сканируем ввод
        
        padUpdate(&pad);
        u64 kDown = padGetButtonsDown(&pad);
        if (kDown & KEY_MINUS) {
            printf("Exiting...\n");
            log_to_file("Exiting...");
            return false;
        }

        if (kDown & KEY_B) {
            printf("\nStarting Dolphin launch process...\n");
            log_to_file("Starting Dolphin launch process...");
            
            // Проверяем пути с префиксом sdmc:
            // snprintf(log_buf, sizeof(log_buf), "sdmc:/switch/dolphin-emu.nro");
            
            needToRun = true;
        }
      consoleDebugInit(debugDevice_SVC);
  socketInitializeDefault();
  inet_pton(AF_INET, "192.168.0.38", &__nxlink_host);
  /* Port 28771 (nc -kl 28771) */
  nxlinkStdio();
    const std::vector<std::string> paths{rom_path,};
    boot = BootParameters::GenerateFromFile(
        paths, BootSessionData(save_state_path, DeleteSavestateAfterBoot::No));
    game_specified = true;
              std::string user_directory;
  // if (options.is_set("user"))
  //   user_directory = static_cast<const char*>(options.get("user"));

  //            s_platform = GetPlatform(options);
  if (!s_platform || !s_platform->Init())
  {
    fprintf(stderr, "No platform found, or failed to initialize.\n");
    return 1;
  }
              const WindowSystemInfo wsi = s_platform->GetWindowSystemInfo();
            UICommon::SetUserDirectory(user_directory);
            UICommon::Init();
            UICommon::InitControllers(wsi);
              auto* const log_manager = Common::Log::LogManager::GetInstance();
  log_manager->SetLogLevel(Common::Log::LogLevel::LDEBUG);
            Core::AddOnStateChangedCallback([](Core::State state) {
                if (state == Core::State::Uninitialized)
                s_platform->Stop();
            });

              s_platform->MainLoop();
            Core::Stop();

            Core::Shutdown();
            s_platform.reset();
                
        // svcSleepThread(100000000ULL);
    }  
    consoleUpdate(NULL);      

    return true;
}


int main(int argc, char* argv[]) {
    // Инициализация консоли

    // consoleInit(NULL);
    // log_to_file("Program started");
    // mainLoop();
    // consoleExit(NULL);
    myRun(argc, argv);
    return 0;
}
