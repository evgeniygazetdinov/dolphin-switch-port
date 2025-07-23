// Copyright 2018 Dolphin Emulator Project
// SPDX-License-Identifier: GPL-2.0-or-later

#pragma once

#include <memory>
#include <string>
#include "Common/WindowSystemInfo.h"

#ifdef __SWITCH__
#include <switch.h>
#endif

// Базовый класс Platform
class Platform {
public:
    Platform() = default;
    virtual ~Platform() = default;
    
    virtual bool Init() = 0;
    virtual void MainLoop() = 0;
    virtual void Stop() = 0;
    
    virtual WindowSystemInfo GetWindowSystemInfo() const { 
        return WindowSystemInfo(); 
    }

    virtual bool IsWindowFullscreen() const { 
        return true; // Для Switch всегда true
    }

    virtual bool IsWindowFocused() const {
        return true; // Для Switch всегда true, так как это единственное активное приложение
    }

    virtual void SetTitle(const std::string& title) {
        // На Switch заголовок окна не используется, поэтому оставляем пустым
    }

    virtual void RequestShutdown() {
        Stop();  // По умолчанию просто вызываем Stop
    }

    static std::unique_ptr<Platform> CreateHeadlessPlatform();
};

// Реализация для Switch
class SwitchPlatform : public Platform {
public:
    SwitchPlatform();
    ~SwitchPlatform() override;
    
    bool Init() override;
    void MainLoop() override;
    void Stop() override;

private:
#ifdef __SWITCH__
    PadState pad;
#endif
};

// Тестовая реализация
class TestPlatform : public Platform {
public:
    TestPlatform() = default;
    ~TestPlatform() override = default;
    
    bool Init() override;
    void MainLoop() override;
    void Stop() override;
};