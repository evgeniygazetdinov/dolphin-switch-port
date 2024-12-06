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
#include "Common/WindowSystemInfo.h"

static bool s_running = true;

class Platform
{
public:
    void Init()
    {
        romfsInit();
        socketInitializeDefault();
        nxlinkStdio();
    }
    
    void Shutdown()
    {
        socketExit();
        romfsExit();
    }
};

class ConsoleHost
{
public:
    void RequestRenderWindowSize(int width, int height) 
    {
    }
    bool RequestRenderWindowInFocus() 
    {
        return true;
    }
    void RequestShutdown() 
    {
        s_running = false;
        Core::Stop();
    }
    void UpdateDiscordClientID(const std::string& client_id) 
    {
    }
    void UpdateDiscordPresence(const std::string& details, const std::string& state,
                             const std::string& large_image_key,
                             const std::string& large_image_text,
                             const std::string& small_image_key,
                             const std::string& small_image_text) 
    {
    }
    bool ShouldRenderNoGame() 
    {
        return false;
    }
};



int main(int argc, char* argv[])
{
    Platform platform;
    platform.Init();

    // ConsoleHost host;
    // Core::Host::SetHostInstance(&host);

    UICommon::SetUserDirectory("sdmc:/switch/dolphin");
    UICommon::CreateDirectories();
    UICommon::Init();

    WindowSystemInfo wsi;
    wsi.type = WindowSystemType::Headless;
    wsi.display_connection = nullptr;
    wsi.render_window = nullptr;
    wsi.render_surface = nullptr;

    std::unique_ptr<BootParameters> boot;
    if (!Core::Init(std::move(boot), wsi))
    {
        Core::Shutdown();
        return 1;
    }

    SwitchUI ui;
    ui.Initialize();

    while (s_running)
    {
        ui.Run();
        Core::HostDispatchJobs();
    }

    Core::Stop();
    Core::Shutdown();
    ui.Shutdown();
    UICommon::Shutdown();
    platform.Shutdown();

    return 0;
}
