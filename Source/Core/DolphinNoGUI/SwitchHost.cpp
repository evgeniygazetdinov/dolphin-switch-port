#include "Core/Host.h"
#include "Common/CommonTypes.h"
#include "Core/Config/MainSettings.h"
#include "Core/ConfigManager.h"

#include <string>
#include <vector>

std::vector<std::string> Host_GetPreferredLocales()
{
    return {"en"}; // Default to English for now
}

bool Host_UIBlocksControllerState()
{
    return false; // We don't block controller input
}

bool Host_RendererHasFocus()
{
    return true; // Always has focus on Switch
}

bool Host_RendererHasFullFocus()
{
    return true; // Always has full focus on Switch
}

bool Host_RendererIsFullscreen()
{
    return true; // Always fullscreen on Switch
}

void Host_Message(HostMessageID id)
{
    // Handle messages if needed
}

void Host_NotifyMapLoaded()
{
    // Nothing to do here for Switch
}

void Host_RefreshDSPDebuggerWindow()
{
    // No debugger window on Switch
}

void Host_RequestRenderWindowSize(int width, int height)
{
    // Fixed size on Switch
}

void Host_UpdateDisasmDialog()
{
    // No disassembly dialog on Switch
}

void Host_UpdateMainFrame()
{
    // Nothing to update
}

void Host_UpdateTitle(const std::string& title)
{
    // No window title on Switch
}

void Host_YieldToUI()
{
    // Nothing to yield to
}

void Host_TitleChanged()
{
    // Nothing to do here
}

void Host_UpdateDiscordClientID(const std::string& client_id)
{
    // No Discord integration on Switch
}

bool Host_UpdateDiscordPresenceRaw(const std::string& details, const std::string& state,
                                 const std::string& large_image_key,
                                 const std::string& large_image_text,
                                 const std::string& small_image_key,
                                 const std::string& small_image_text,
                                 const int64_t start_timestamp,
                                 const int64_t end_timestamp,
                                 const int party_size,
                                 const int party_max)
{
    return false; // No Discord integration on Switch
}

std::unique_ptr<GBAHostInterface> Host_CreateGBAHost(std::weak_ptr<HW::GBA::Core> core)
{
    return nullptr; // No GBA support for now
}
