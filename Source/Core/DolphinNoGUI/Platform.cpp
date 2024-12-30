// Copyright 2018 Dolphin Emulator Project
// SPDX-License-Identifier: GPL-2.0-or-later

#include "DolphinNoGUI/Platform.h"
#include "Core/Host.h"
#include <cstdio>

// Реализация SwitchPlatform
SwitchPlatform::SwitchPlatform() {
#ifdef __SWITCH__
    padConfigureInput(1, HidNpadStyleSet_NpadStandard);
    padInitializeDefault(&pad);
#endif
}

SwitchPlatform::~SwitchPlatform() {
}

bool SwitchPlatform::Init() {
#ifdef __SWITCH__
    consoleInit(NULL);
    return true;
#else
    return false;
#endif
}

void SwitchPlatform::MainLoop() {
#ifdef __SWITCH__
    while (appletMainLoop()) {
        padUpdate(&pad);
        u64 kDown = padGetButtonsDown(&pad);
        
        if (kDown & HidNpadButton_Plus)
            break;
            
        consoleUpdate(NULL);
    }
#endif
}

void SwitchPlatform::Stop() {
#ifdef __SWITCH__
    consoleExit(NULL);
#endif
}

// Реализация TestPlatform
bool TestPlatform::Init() {
    printf("Test Platform Initialized\n");
    return true;
}

void TestPlatform::MainLoop() {
    printf("Test Platform Main Loop\n");
    for(int i = 0; i < 10; i++) {
        printf("Test iteration %d\n", i);
    }
}

void TestPlatform::Stop() {
    printf("Test Platform Stopped\n");
}

// Фабричный метод
std::unique_ptr<Platform> Platform::CreateHeadlessPlatform() {
#ifdef __SWITCH__
    return std::make_unique<SwitchPlatform>();
#else
    return std::make_unique<TestPlatform>();
#endif
}