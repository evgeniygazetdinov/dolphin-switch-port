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
include Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.make

# Include the progress variables for this target.
include Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/progress.make

# Include the compile flags for this target's objects.
include Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj: Source/Core/AudioCommon/AudioCommon.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj -MF CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj.d -o CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/AudioCommon.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/AudioCommon.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/AudioCommon.cpp > CMakeFiles/audiocommon.dir/AudioCommon.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/AudioCommon.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/AudioCommon.cpp -o CMakeFiles/audiocommon.dir/AudioCommon.cpp.s

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj: Source/Core/AudioCommon/AudioStretcher.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj -MF CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj.d -o CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/AudioStretcher.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/AudioStretcher.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/AudioStretcher.cpp > CMakeFiles/audiocommon.dir/AudioStretcher.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/AudioStretcher.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/AudioStretcher.cpp -o CMakeFiles/audiocommon.dir/AudioStretcher.cpp.s

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.obj: Source/Core/AudioCommon/CubebStream.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.obj -MF CMakeFiles/audiocommon.dir/CubebStream.cpp.obj.d -o CMakeFiles/audiocommon.dir/CubebStream.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/CubebStream.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/CubebStream.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/CubebStream.cpp > CMakeFiles/audiocommon.dir/CubebStream.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/CubebStream.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/CubebStream.cpp -o CMakeFiles/audiocommon.dir/CubebStream.cpp.s

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj: Source/Core/AudioCommon/CubebUtils.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj -MF CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj.d -o CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/CubebUtils.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/CubebUtils.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/CubebUtils.cpp > CMakeFiles/audiocommon.dir/CubebUtils.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/CubebUtils.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/CubebUtils.cpp -o CMakeFiles/audiocommon.dir/CubebUtils.cpp.s

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.obj: Source/Core/AudioCommon/Mixer.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.obj -MF CMakeFiles/audiocommon.dir/Mixer.cpp.obj.d -o CMakeFiles/audiocommon.dir/Mixer.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/Mixer.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/Mixer.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/Mixer.cpp > CMakeFiles/audiocommon.dir/Mixer.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/Mixer.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/Mixer.cpp -o CMakeFiles/audiocommon.dir/Mixer.cpp.s

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj: Source/Core/AudioCommon/SurroundDecoder.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj -MF CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj.d -o CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/SurroundDecoder.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/SurroundDecoder.cpp > CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/SurroundDecoder.cpp -o CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.s

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj: Source/Core/AudioCommon/NullSoundStream.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj -MF CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj.d -o CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/NullSoundStream.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/NullSoundStream.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/NullSoundStream.cpp > CMakeFiles/audiocommon.dir/NullSoundStream.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/NullSoundStream.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/NullSoundStream.cpp -o CMakeFiles/audiocommon.dir/NullSoundStream.cpp.s

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/flags.make
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.obj: Source/Core/AudioCommon/WaveFile.cpp
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.obj: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.obj -MF CMakeFiles/audiocommon.dir/WaveFile.cpp.obj.d -o CMakeFiles/audiocommon.dir/WaveFile.cpp.obj -c /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/WaveFile.cpp

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audiocommon.dir/WaveFile.cpp.i"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/WaveFile.cpp > CMakeFiles/audiocommon.dir/WaveFile.cpp.i

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audiocommon.dir/WaveFile.cpp.s"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/WaveFile.cpp -o CMakeFiles/audiocommon.dir/WaveFile.cpp.s

# Object files for target audiocommon
audiocommon_OBJECTS = \
"CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj" \
"CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj" \
"CMakeFiles/audiocommon.dir/CubebStream.cpp.obj" \
"CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj" \
"CMakeFiles/audiocommon.dir/Mixer.cpp.obj" \
"CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj" \
"CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj" \
"CMakeFiles/audiocommon.dir/WaveFile.cpp.obj"

# External object files for target audiocommon
audiocommon_EXTERNAL_OBJECTS =

Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioCommon.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/AudioStretcher.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebStream.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/CubebUtils.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/Mixer.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/SurroundDecoder.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/NullSoundStream.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/WaveFile.cpp.obj
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/build.make
Source/Core/AudioCommon/libaudiocommon.a: Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libaudiocommon.a"
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && $(CMAKE_COMMAND) -P CMakeFiles/audiocommon.dir/cmake_clean_target.cmake
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/audiocommon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/build: Source/Core/AudioCommon/libaudiocommon.a
.PHONY : Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/build

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/clean:
	cd /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon && $(CMAKE_COMMAND) -P CMakeFiles/audiocommon.dir/cmake_clean.cmake
.PHONY : Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/clean

Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/depend:
	cd /home/ev/ClangProjects/dolphin-switch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon /home/ev/ClangProjects/dolphin-switch/Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Source/Core/AudioCommon/CMakeFiles/audiocommon.dir/depend
