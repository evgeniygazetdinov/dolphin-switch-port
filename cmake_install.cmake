# Install script for directory: /home/ev/ClangProjects/dolphin-switch

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/devkitpro/portlibs/switch")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/devkitpro/portlibs/switch/share/dolphin-emu/sys/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/devkitpro/portlibs/switch/share/dolphin-emu/sys" TYPE DIRECTORY FILES "/home/ev/ClangProjects/dolphin-switch/Data/Sys/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/devkitpro/portlibs/switch/share/dolphin-emu/license.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/devkitpro/portlibs/switch/share/dolphin-emu" TYPE FILE FILES "/home/ev/ClangProjects/dolphin-switch/Data/license.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ev/ClangProjects/dolphin-switch/Externals/cpp-optparse/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/imgui/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/implot/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/glslang/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/pugixml/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/enet/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/xxhash/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/bzip2/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/liblzma/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/zstd/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/zlib-ng/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/minizip/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/LZO/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/libspng/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/FreeSurround/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/soundtouch/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/SFML/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/libiconv-1.14/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/expr/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/rangeset/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/FatFs/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Externals/rcheevos/cmake_install.cmake")
  include("/home/ev/ClangProjects/dolphin-switch/Source/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ev/ClangProjects/dolphin-switch/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
