// Copyright 2011 Dolphin Emulator Project
// SPDX-License-Identifier: GPL-2.0-or-later

// File description
// -------------
// Purpose of this file: Collect boot settings for Core::Init()

// Call sequence: This file has one of the first function called when a game is booted,
// the boot sequence in the code is:

// DolphinWX:    FrameTools.cpp         StartGame
// Core          BootManager.cpp        BootCore
//               Core.cpp               Init                     Thread creation
//                                      EmuThread                Calls CBoot::BootUp
//               Boot.cpp               CBoot::BootUp()
//                                      CBoot::EmulatedBS2_Wii() / GC() or Load_BS2()

#include "Core/BootManager.h"

#include <memory>
#include <string>
#include <vector>

#ifdef __SWITCH__
#include <switch.h>
#endif

#include "Common/CommonTypes.h"
#include "Common/Config/Config.h"
#include "Common/FileUtil.h"
#include "Common/IniFile.h"

#include "Core/Boot/Boot.h"
#include "Core/Config/MainSettings.h"
#include "Core/Config/SYSCONFSettings.h"
#include "Core/ConfigLoaders/BaseConfigLoader.h"
#include "Core/ConfigManager.h"
#include "Core/Core.h"
#include "Core/HW/EXI/EXI.h"
#include "Core/HW/SI/SI.h"
#include "Core/PowerPC/PowerPC.h"
#include "Core/System.h"

namespace BootManager
{

void RestoreConfig()
{
  Config::Save();
}

bool BootCore(std::unique_ptr<BootParameters> boot, const WindowSystemInfo& wsi)
{
#ifdef __SWITCH__
  static char log_buffer[2048] = {0};
  int log_pos = 0;
  
  auto Log = [&](const char* format, ...) {
    va_list args;
    va_start(args, format);
    char temp[1024];
    vsnprintf(temp, sizeof(temp), format, args);
    va_end(args);
    
    log_pos += snprintf(log_buffer + log_pos, sizeof(log_buffer) - log_pos, "%s\n", temp);
    printf("\x1b[1;1H%s", log_buffer);
        svcSleepThread(100000000ULL);
  };

  Log("BootManager: Starting...");
#endif

  if (!boot)
    return false;

#ifdef __SWITCH__
  Log("BootManager: Loading config...");
#endif

  Config::Save();

#ifdef __SWITCH__
  Log("BootManager: Preparing boot params...");
#endif

  if (Config::Get(Config::MAIN_DSP_HLE))
  {
#ifdef __SWITCH__
    Log("BootManager: DSP HLE enabled");
#endif
  }

#ifdef __SWITCH__
  Log("BootManager: Starting core...");
#endif

  if (!Core::Init(std::move(boot), wsi))
  {
#ifdef __SWITCH__
    Log("BootManager: Core init failed!");
    Log("BootManager: State at failure = %d", static_cast<int>(Core::GetState()));
    svcSleepThread(1000000000ULL);
#endif
    return false;
  }

#ifdef __SWITCH__
  Log("BootManager: Core initialized");
  Log("BootManager: Initial state = f");
  
  
  if (Core::GetState() == Core::State::Stopping)
  {
    Log("BootManager: Core is stopping immediately!");
    Log("BootManager: Checking last error...");
  }


#endif

  return true;
}

}  // namespace BootManager
