#pragma once

#include <SDL.h>
#include <string>
#include <vector>
#include <memory>

class SwitchUI {
public:
    SwitchUI();
    ~SwitchUI();

    bool Initialize();
    void Run();
    void Shutdown();

private:
    void HandleInput();
    void RenderMenu();
    void LoadGameList();
    
    SDL_Window* m_window = nullptr;
    SDL_Renderer* m_renderer = nullptr;
    bool m_running = true;
    
    std::vector<std::string> m_game_list;
    size_t m_selected_game = 0;
};
