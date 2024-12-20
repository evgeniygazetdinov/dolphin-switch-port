# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ev/ClangProjects/dolphin-switch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ev/ClangProjects/dolphin-switch

# Include any dependencies generated for this target.
include Source/UnitTests/Common/CMakeFiles/SwapTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Source/UnitTests/Common/CMakeFiles/SwapTest.dir/compiler_depend.make

# Include the progress variables for this target.
include Source/UnitTests/Common/CMakeFiles/SwapTest.dir/progress.make

# Include the compile flags for this target's objects.
include Source/UnitTests/Common/CMakeFiles/SwapTest.dir/flags.make

Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.obj: Source/UnitTests/Common/CMakeFiles/SwapTest.dir/flags.make
Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.obj: Source/UnitTests/Common/SwapTest.cpp
Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.obj: Source/UnitTests/Common/CMakeFiles/SwapTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.obj -MF CMakeFiles/SwapTest.dir/SwapTest.cpp.obj.d -o CMakeFiles/SwapTest.dir/SwapTest.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common/SwapTest.cpp

Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SwapTest.dir/SwapTest.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common/SwapTest.cpp > CMakeFiles/SwapTest.dir/SwapTest.cpp.i

Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SwapTest.dir/SwapTest.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common/SwapTest.cpp -o CMakeFiles/SwapTest.dir/SwapTest.cpp.s

# Object files for target SwapTest
SwapTest_OBJECTS = \
"CMakeFiles/SwapTest.dir/SwapTest.cpp.obj"

# External object files for target SwapTest
SwapTest_EXTERNAL_OBJECTS = \
"/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeFiles/unittests_stubhost.dir/StubHost.cpp.obj" \
"/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj"

Binaries/Tests/SwapTest.elf: Source/UnitTests/Common/CMakeFiles/SwapTest.dir/SwapTest.cpp.obj
Binaries/Tests/SwapTest.elf: Source/UnitTests/CMakeFiles/unittests_stubhost.dir/StubHost.cpp.obj
Binaries/Tests/SwapTest.elf: Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj
Binaries/Tests/SwapTest.elf: Source/UnitTests/Common/CMakeFiles/SwapTest.dir/build.make
Binaries/Tests/SwapTest.elf: Source/Core/Core/libcore.a
Binaries/Tests/SwapTest.elf: Source/Core/UICommon/libuicommon.a
Binaries/Tests/SwapTest.elf: Source/Core/DiscIO/libdiscio.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoBackends/Null/libvideonull.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoBackends/OGL/libvideoogl.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoBackends/Software/libvideosoftware.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoCommon/libvideocommon.a
Binaries/Tests/SwapTest.elf: Source/Core/Core/libcore.a
Binaries/Tests/SwapTest.elf: Source/Core/DiscIO/libdiscio.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoBackends/Null/libvideonull.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoBackends/OGL/libvideoogl.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoBackends/Software/libvideosoftware.a
Binaries/Tests/SwapTest.elf: Source/Core/VideoCommon/libvideocommon.a
Binaries/Tests/SwapTest.elf: Source/Core/AudioCommon/libaudiocommon.a
Binaries/Tests/SwapTest.elf: Externals/soundtouch/libSoundTouch.a
Binaries/Tests/SwapTest.elf: Externals/FreeSurround/libFreeSurround.a
Binaries/Tests/SwapTest.elf: Externals/cubeb/libcubeb.a
Binaries/Tests/SwapTest.elf: Source/Core/InputCommon/libinputcommon.a
Binaries/Tests/SwapTest.elf: /opt/devkitpro/portlibs/switch/lib/libSDL2.a
Binaries/Tests/SwapTest.elf: Externals/SFML/libsfml-network.a
Binaries/Tests/SwapTest.elf: Externals/SFML/libsfml-system.a
Binaries/Tests/SwapTest.elf: Externals/LZO/liblzo2.a
Binaries/Tests/SwapTest.elf: Externals/rcheevos/librcheevos.a
Binaries/Tests/SwapTest.elf: Externals/bzip2/libbzip2.a
Binaries/Tests/SwapTest.elf: Externals/liblzma/liblzma.a
Binaries/Tests/SwapTest.elf: Externals/zstd/libzstd.a
Binaries/Tests/SwapTest.elf: Externals/xxhash/libxxhash.a
Binaries/Tests/SwapTest.elf: Externals/implot/libimplot.a
Binaries/Tests/SwapTest.elf: Externals/imgui/libimgui.a
Binaries/Tests/SwapTest.elf: Externals/glslang/libglslang.a
Binaries/Tests/SwapTest.elf: Source/Core/Common/libcommon.a
Binaries/Tests/SwapTest.elf: Externals/enet/libenet.a
Binaries/Tests/SwapTest.elf: Externals/mbedtls/library/libmbedtls.a
Binaries/Tests/SwapTest.elf: Externals/mbedtls/library/libmbedx509.a
Binaries/Tests/SwapTest.elf: Externals/mbedtls/library/libmbedcrypto.a
Binaries/Tests/SwapTest.elf: Externals/FatFs/libFatFs.a
Binaries/Tests/SwapTest.elf: Externals/libiconv-1.14/libiconv.a
Binaries/Tests/SwapTest.elf: Externals/libspng/libspng.a
Binaries/Tests/SwapTest.elf: Externals/pugixml/libpugixml.a
Binaries/Tests/SwapTest.elf: Externals/cpp-optparse/libcpp-optparse.a
Binaries/Tests/SwapTest.elf: Externals/minizip/libminizip.a
Binaries/Tests/SwapTest.elf: Externals/zlib-ng/zlib-ng/libz.a
Binaries/Tests/SwapTest.elf: Externals/fmt/libfmt.a
Binaries/Tests/SwapTest.elf: lib/libgtest.a
Binaries/Tests/SwapTest.elf: Source/UnitTests/Common/CMakeFiles/SwapTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../Binaries/Tests/SwapTest.elf"
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SwapTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Source/UnitTests/Common/CMakeFiles/SwapTest.dir/build: Binaries/Tests/SwapTest.elf
.PHONY : Source/UnitTests/Common/CMakeFiles/SwapTest.dir/build

Source/UnitTests/Common/CMakeFiles/SwapTest.dir/clean:
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common && $(CMAKE_COMMAND) -P CMakeFiles/SwapTest.dir/cmake_clean.cmake
.PHONY : Source/UnitTests/Common/CMakeFiles/SwapTest.dir/clean

Source/UnitTests/Common/CMakeFiles/SwapTest.dir/depend:
	cd /home/ev/ClangProjects/dolphin-switch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Common/CMakeFiles/SwapTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Source/UnitTests/Common/CMakeFiles/SwapTest.dir/depend

