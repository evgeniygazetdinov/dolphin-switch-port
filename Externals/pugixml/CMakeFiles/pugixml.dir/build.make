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
include Externals/pugixml/CMakeFiles/pugixml.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Externals/pugixml/CMakeFiles/pugixml.dir/compiler_depend.make

# Include the progress variables for this target.
include Externals/pugixml/CMakeFiles/pugixml.dir/progress.make

# Include the compile flags for this target's objects.
include Externals/pugixml/CMakeFiles/pugixml.dir/flags.make

Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.obj: Externals/pugixml/CMakeFiles/pugixml.dir/flags.make
Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.obj: Externals/pugixml/pugixml.cpp
Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.obj: Externals/pugixml/CMakeFiles/pugixml.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/pugixml && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.obj -MF CMakeFiles/pugixml.dir/pugixml.cpp.obj.d -o CMakeFiles/pugixml.dir/pugixml.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Externals/pugixml/pugixml.cpp

Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pugixml.dir/pugixml.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/pugixml && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/pugixml/pugixml.cpp > CMakeFiles/pugixml.dir/pugixml.cpp.i

Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pugixml.dir/pugixml.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/pugixml && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/pugixml/pugixml.cpp -o CMakeFiles/pugixml.dir/pugixml.cpp.s

# Object files for target pugixml
pugixml_OBJECTS = \
"CMakeFiles/pugixml.dir/pugixml.cpp.obj"

# External object files for target pugixml
pugixml_EXTERNAL_OBJECTS =

Externals/pugixml/libpugixml.a: Externals/pugixml/CMakeFiles/pugixml.dir/pugixml.cpp.obj
Externals/pugixml/libpugixml.a: Externals/pugixml/CMakeFiles/pugixml.dir/build.make
Externals/pugixml/libpugixml.a: Externals/pugixml/CMakeFiles/pugixml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libpugixml.a"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/pugixml && $(CMAKE_COMMAND) -P CMakeFiles/pugixml.dir/cmake_clean_target.cmake
	cd /home/ev/ClangProjects/dolphin-switch/Externals/pugixml && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pugixml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Externals/pugixml/CMakeFiles/pugixml.dir/build: Externals/pugixml/libpugixml.a
.PHONY : Externals/pugixml/CMakeFiles/pugixml.dir/build

Externals/pugixml/CMakeFiles/pugixml.dir/clean:
	cd /home/ev/ClangProjects/dolphin-switch/Externals/pugixml && $(CMAKE_COMMAND) -P CMakeFiles/pugixml.dir/cmake_clean.cmake
.PHONY : Externals/pugixml/CMakeFiles/pugixml.dir/clean

Externals/pugixml/CMakeFiles/pugixml.dir/depend:
	cd /home/ev/ClangProjects/dolphin-switch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Externals/pugixml /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Externals/pugixml /home/ev/ClangProjects/dolphin-switch/Externals/pugixml/CMakeFiles/pugixml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Externals/pugixml/CMakeFiles/pugixml.dir/depend
