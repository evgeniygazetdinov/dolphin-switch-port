#include "SwitchUI.h"
#include "Common/FileUtil.h"
#include "Common/CommonPaths.h"
#include "Core/Config/MainSettings.h"
#include "Core/ConfigManager.h"
#include "Core/Core.h"
#include "Core/HW/GCPad.h"
#include "Core/HW/Wiimote.h"
#include "Core/State.h"
#include "VideoCommon/VideoConfig.h"

#include <switch.h>

SwitchUI::SwitchUI() {}

SwitchUI::~SwitchUI() {
    Shutdown();
}

bool SwitchUI::Initialize() {
    romfsInit();
    
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_JOYSTICK) < 0) {
        return false;
    }

    m_window = SDL_CreateWindow("Dolphin", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                              1280, 720, SDL_WINDOW_SHOWN);
    if (!m_window) {
        return false;
    }

    m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!m_renderer) {
        return false;
    }

    LoadGameList();
    return true;
}

void SwitchUI::LoadGameList() {
    std::string game_dir = File::GetUserPath(D_GCUSER_IDX);
    File::FSTEntry entry;
    
    if (File::ScanDirectoryTree(game_dir, entry)) {
        for (const auto& child : entry.children) {
            if (child.isDirectory)
                continue;
                
            std::string ext = File::GetExtension(child.virtualName);
            if (ext == ".gcm" || ext == ".iso" || ext == ".wbfs" || ext == ".ciso" || ext == ".gcz") {
                m_game_list.push_back(child.virtualName);
            }
        }
    }
}

void SwitchUI::HandleInput() {
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
        switch (event.type) {
            case SDL_QUIT:
                m_running = false;
                break;
            case SDL_KEYDOWN:
                switch (event.key.keysym.sym) {
                    case SDLK_UP:
                        if (m_selected_game > 0)
                            m_selected_game--;
                        break;
                    case SDLK_DOWN:
                        if (m_selected_game < m_game_list.size() - 1)
                            m_selected_game++;
                        break;
                    case SDLK_RETURN:
                        if (!m_game_list.empty()) {
                            // Start game
                            std::string game_path = File::GetUserPath(D_GCUSER_IDX) + m_game_list[m_selected_game];
                            // TODO: Start emulation
                        }
                        break;
                }
                break;
        }
    }
}

void SwitchUI::RenderMenu() {
    SDL_SetRenderDrawColor(m_renderer, 0, 0, 0, 255);
    SDL_RenderClear(m_renderer);

    // TODO: Add text rendering using SDL_ttf
    
    SDL_RenderPresent(m_renderer);
}

void SwitchUI::Run() {
    while (m_running) {
        HandleInput();
        RenderMenu();
    }
}

void SwitchUI::Shutdown() {
    if (m_renderer) {
        SDL_DestroyRenderer(m_renderer);
        m_renderer = nullptr;
    }
    if (m_window) {
        SDL_DestroyWindow(m_window);
        m_window = nullptr;
    }
    SDL_Quit();
    romfsExit();
}
