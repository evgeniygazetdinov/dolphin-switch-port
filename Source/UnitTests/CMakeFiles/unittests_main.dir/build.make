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
include Source/UnitTests/CMakeFiles/unittests_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Source/UnitTests/CMakeFiles/unittests_main.dir/compiler_depend.make

# Include the progress variables for this target.
include Source/UnitTests/CMakeFiles/unittests_main.dir/progress.make

# Include the compile flags for this target's objects.
include Source/UnitTests/CMakeFiles/unittests_main.dir/flags.make

Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj: Source/UnitTests/CMakeFiles/unittests_main.dir/flags.make
Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj: Source/UnitTests/UnitTestsMain.cpp
Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj: Source/UnitTests/CMakeFiles/unittests_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj -MF CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj.d -o CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/UnitTestsMain.cpp

Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/UnitTestsMain.cpp > CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.i

Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/UnitTestsMain.cpp -o CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.s

unittests_main: Source/UnitTests/CMakeFiles/unittests_main.dir/UnitTestsMain.cpp.obj
unittests_main: Source/UnitTests/CMakeFiles/unittests_main.dir/build.make
.PHONY : unittests_main

# Rule to build all files generated by this target.
Source/UnitTests/CMakeFiles/unittests_main.dir/build: unittests_main
.PHONY : Source/UnitTests/CMakeFiles/unittests_main.dir/build

Source/UnitTests/CMakeFiles/unittests_main.dir/clean:
	cd /home/ev/ClangProjects/dolphin-switch/Source/UnitTests && $(CMAKE_COMMAND) -P CMakeFiles/unittests_main.dir/cmake_clean.cmake
.PHONY : Source/UnitTests/CMakeFiles/unittests_main.dir/clean

Source/UnitTests/CMakeFiles/unittests_main.dir/depend:
	cd /home/ev/ClangProjects/dolphin-switch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Source/UnitTests /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Source/UnitTests /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeFiles/unittests_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Source/UnitTests/CMakeFiles/unittests_main.dir/depend
