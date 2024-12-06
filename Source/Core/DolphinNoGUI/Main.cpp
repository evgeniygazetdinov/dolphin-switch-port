#include "Common/CommonTypes.h"
#include "Common/FileUtil.h"
#include "Common/Logging/LogManager.h"
#include "Core/Boot/Boot.h"
#include "Core/ConfigManager.h"
#include "Core/Core.h"
#include "Core/HW/Wiimote.h"
#include "Core/Host.h"
#include "Core/State.h"
#include "SwitchUI.h"

#include <switch.h>
#include <cstdio>
#include <thread>

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

class ConsoleHost : public Core::Host
{
public:
    void UpdateTitle() override {}
    void RequestRenderWindowSize(int width, int height) override {}
    bool RequestRenderWindowInFocus() override { return true; }
    void RequestShutdown() override 
    {
        s_running = false;
        Core::Stop();
    }
    void UpdateDiscordClientID(const std::string& client_id) override {}
    void UpdateDiscordPresence(const std::string& details, const std::string& state,
                             const std::string& large_image_key,
                             const std::string& large_image_text,
                             const std::string& small_image_key,
                             const std::string& small_image_text) override {}
    bool ShouldRenderNoGame() override { return false; }
};

int main(int argc, char* argv[])
{
    Platform platform;
    platform.Init();

    std::unique_ptr<SwitchUI> ui = std::make_unique<SwitchUI>();
    if (!ui->Initialize())
    {
        printf("Failed to initialize UI\n");
        return 1;
    }

    ConsoleHost host;
    Core::SetHost(&host);

    UICommon::SetUserDirectory("sdmc:/switch/dolphin");
    UICommon::CreateDirectories();
    UICommon::Init();

    Core::Init();

    ui->Run();

    Core::Shutdown();
    UICommon::Shutdown();
    platform.Shutdown();

    return 0;
}
