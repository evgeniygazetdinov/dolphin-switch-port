add_executable(dolphin-nogui
  MainNoGUI.cpp  # Изменено с Main.cpp на MainNoGui.cpp
  Platform.cpp
        MainNoGUI.cpp)
if(ENABLE_X11 AND X11_FOUND)
  target_sources(dolphin-nogui PRIVATE PlatformX11.cpp)
endif()

if(WIN32)
  target_sources(dolphin-nogui PRIVATE PlatformWin32.cpp)
endif()

if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
  target_sources(dolphin-nogui PRIVATE PlatformFBDev.cpp)
endif()

set_target_properties(dolphin-nogui PROPERTIES OUTPUT_NAME dolphin-emu)

target_link_libraries(dolphin-nogui
  PRIVATE
  core
  uicommon
  # другие необходимые библиотеки
)

if(MSVC)
  # Add precompiled header
  target_link_libraries(dolphin-nogui PRIVATE use_pch)
endif()

if(USE_DISCORD_PRESENCE)
  target_compile_definitions(dolphin-nogui PRIVATE -DUSE_DISCORD_PRESENCE)
endif()

set(CPACK_PACKAGE_EXECUTABLES ${CPACK_PACKAGE_EXECUTABLES} dolphin-nogui)
install(TARGETS dolphin-nogui RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

if(CMAKE_SYSTEM_NAME STREQUAL "Switch")
    add_executable(dolphin-nogui
        MainNoGUI.cpp
        Platform.cpp
    )

    target_link_libraries(dolphin-nogui
        PRIVATE
        core
        uicommon
        switch::libnx
    )

    # Метаданные для .nro
    set(APP_TITLE "Dolphin Emulator")
    set(APP_AUTHOR "Dolphin Team")
    set(APP_VERSION "1.0.0")
    set(APP_ICON "${CMAKE_SOURCE_DIR}/Data/dolphin.jpg")

    # Создаем .nacp файл
    add_custom_command(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/dolphin.nacp
        COMMAND ${DEVKITPRO}/tools/bin/nacptool
                --create "${APP_TITLE}" "${APP_AUTHOR}" "${APP_VERSION}"
                ${CMAKE_CURRENT_BINARY_DIR}/dolphin.nacp
        COMMENT "Creating .nacp file..."
    )

    # Создаем .nro файл
    add_custom_command(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/dolphin-nogui.nro
        COMMAND ${DEVKITPRO}/tools/bin/elf2nro
                $<TARGET_FILE:dolphin-nogui>
                ${CMAKE_CURRENT_BINARY_DIR}/dolphin-nogui.nro
                --icon=${APP_ICON}
                --nacp=${CMAKE_CURRENT_BINARY_DIR}/dolphin.nacp
        DEPENDS 
            dolphin-nogui 
            ${CMAKE_CURRENT_BINARY_DIR}/dolphin.nacp
        COMMENT "Creating .nro file..."
    )

    # Цель для создания .nro
    add_custom_target(nro ALL
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/dolphin-nogui.nro
    )

    # Установка
    install(FILES ${CMAKE_CURRENT_BINARY_DIR}/dolphin-nogui.nro
            DESTINATION ${CMAKE_INSTALL_PREFIX}
            PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                       GROUP_EXECUTE GROUP_READ
                       WORLD_EXECUTE WORLD_READ)
endif()

if(NINTENDO_SWITCH)
  nx_generate_nacp(dolphin-nogui.nacp
    NAME dolphin-nogui
    AUTHOR "Dolphin authors"
    VERSION "${DOLPHIN_VERSION_MAJOR}.${DOLPHIN_VERSION_MINOR}.${DOLPHIN_VERSION_PATCH}"
  )

  nx_create_nro(dolphin-nogui
    NACP dolphin-nogui.nacp
  )
endif()
