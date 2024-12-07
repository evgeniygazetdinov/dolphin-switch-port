cmake_minimum_required(VERSION 3.22)

option(DOLPHIN_CXX_FLAGS "Flags used to compile Dolphin-only sources" "")
if(DOLPHIN_CXX_FLAGS)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${DOLPHIN_CXX_FLAGS}")
endif()

if(CMAKE_SYSTEM_NAME MATCHES "Windows")
  add_definitions(-DNOMINMAX)
  add_definitions(-DUNICODE)
  add_definitions(-D_UNICODE)
  add_definitions(-DWIN32_LEAN_AND_MEAN)
  add_definitions(-D_SCL_SECURE_NO_WARNINGS)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS)
  add_definitions(-D_CRT_SECURE_NO_DEPRECATE)
  add_definitions(-D_CRT_NONSTDC_NO_WARNINGS)
  add_definitions(-D_SILENCE_CXX17_CODECVT_HEADER_DEPRECATION_WARNING)
endif()

if (NOT MSVC)
  set(CMAKE_CXX_STANDARD 20)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
  set(CMAKE_CXX_EXTENSIONS OFF)
endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if (MSVC)
  # Compile PCH
  add_subdirectory(PCH)
else()
  add_compile_options(
    -Wall
    -Wtype-limits
    -Wsign-compare
    -Wignored-qualifiers
    -Wuninitialized
    -Wlogical-op
    -Wshadow
    -Winit-self
    -Wmissing-declarations
    -Wmissing-variable-declarations
    -Wno-stringop-truncation
    -Werror=format
    -Werror=return-type
  )
endif()

# These aren't actually needed for C11/C++11
# but some dependencies require them (LLVM, libav).
add_definitions(-D__STDC_LIMIT_MACROS)
add_definitions(-D__STDC_CONSTANT_MACROS)

add_subdirectory(Core)
if (ANDROID)
  add_subdirectory(Android/jni)
endif()

if (ENABLE_TESTS)
  add_subdirectory(UnitTests)
endif()

if (DSPTOOL)
  add_subdirectory(DSPTool)
endif()

# TODO: Add DSPSpy. Preferably make it option() and cpack component
