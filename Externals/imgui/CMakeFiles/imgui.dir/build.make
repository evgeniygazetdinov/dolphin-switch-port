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
include Externals/imgui/CMakeFiles/imgui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Externals/imgui/CMakeFiles/imgui.dir/compiler_depend.make

# Include the progress variables for this target.
include Externals/imgui/CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include Externals/imgui/CMakeFiles/imgui.dir/flags.make

Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/flags.make
Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj: Externals/imgui/imgui.cpp
Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj -MF CMakeFiles/imgui.dir/imgui.cpp.obj.d -o CMakeFiles/imgui.dir/imgui.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui.cpp

Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui.cpp > CMakeFiles/imgui.dir/imgui.cpp.i

Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui.cpp -o CMakeFiles/imgui.dir/imgui.cpp.s

Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/flags.make
Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj: Externals/imgui/imgui_draw.cpp
Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj -MF CMakeFiles/imgui.dir/imgui_draw.cpp.obj.d -o CMakeFiles/imgui.dir/imgui_draw.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_draw.cpp

Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_draw.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_draw.cpp > CMakeFiles/imgui.dir/imgui_draw.cpp.i

Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_draw.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_draw.cpp -o CMakeFiles/imgui.dir/imgui_draw.cpp.s

Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/flags.make
Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.obj: Externals/imgui/imgui_tables.cpp
Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.obj -MF CMakeFiles/imgui.dir/imgui_tables.cpp.obj.d -o CMakeFiles/imgui.dir/imgui_tables.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_tables.cpp

Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_tables.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_tables.cpp > CMakeFiles/imgui.dir/imgui_tables.cpp.i

Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_tables.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_tables.cpp -o CMakeFiles/imgui.dir/imgui_tables.cpp.s

Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/flags.make
Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.obj: Externals/imgui/imgui_widgets.cpp
Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.obj: Externals/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.obj -MF CMakeFiles/imgui.dir/imgui_widgets.cpp.obj.d -o CMakeFiles/imgui.dir/imgui_widgets.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_widgets.cpp

Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_widgets.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_widgets.cpp > CMakeFiles/imgui.dir/imgui_widgets.cpp.i

Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_widgets.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/imgui/imgui_widgets.cpp -o CMakeFiles/imgui.dir/imgui_widgets.cpp.s

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui.cpp.obj" \
"CMakeFiles/imgui.dir/imgui_draw.cpp.obj" \
"CMakeFiles/imgui.dir/imgui_tables.cpp.obj" \
"CMakeFiles/imgui.dir/imgui_widgets.cpp.obj"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

Externals/imgui/libimgui.a: Externals/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj
Externals/imgui/libimgui.a: Externals/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj
Externals/imgui/libimgui.a: Externals/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.obj
Externals/imgui/libimgui.a: Externals/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.obj
Externals/imgui/libimgui.a: Externals/imgui/CMakeFiles/imgui.dir/build.make
Externals/imgui/libimgui.a: Externals/imgui/CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libimgui.a"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean_target.cmake
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Externals/imgui/CMakeFiles/imgui.dir/build: Externals/imgui/libimgui.a
.PHONY : Externals/imgui/CMakeFiles/imgui.dir/build

Externals/imgui/CMakeFiles/imgui.dir/clean:
	cd /home/ev/ClangProjects/dolphin-switch/Externals/imgui && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : Externals/imgui/CMakeFiles/imgui.dir/clean

Externals/imgui/CMakeFiles/imgui.dir/depend:
	cd /home/ev/ClangProjects/dolphin-switch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Externals/imgui /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Externals/imgui /home/ev/ClangProjects/dolphin-switch/Externals/imgui/CMakeFiles/imgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Externals/imgui/CMakeFiles/imgui.dir/depend
