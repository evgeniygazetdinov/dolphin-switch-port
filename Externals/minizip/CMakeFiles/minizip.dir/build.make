# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/ev/Documents/clion-2020.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ev/Documents/clion-2020.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ev/ClangProjects/dolphin-switch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ev/ClangProjects/dolphin-switch

# Include any dependencies generated for this target.
include Externals/minizip/CMakeFiles/minizip.dir/depend.make

# Include the progress variables for this target.
include Externals/minizip/CMakeFiles/minizip.dir/progress.make

# Include the compile flags for this target's objects.
include Externals/minizip/CMakeFiles/minizip.dir/flags.make

Externals/minizip/CMakeFiles/minizip.dir/mz_compat.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_compat.c.obj: Externals/minizip/mz_compat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_compat.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_compat.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_compat.c

Externals/minizip/CMakeFiles/minizip.dir/mz_compat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_compat.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_compat.c > CMakeFiles/minizip.dir/mz_compat.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_compat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_compat.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_compat.c -o CMakeFiles/minizip.dir/mz_compat.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_crypt.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_crypt.c.obj: Externals/minizip/mz_crypt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_crypt.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_crypt.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_crypt.c

Externals/minizip/CMakeFiles/minizip.dir/mz_crypt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_crypt.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_crypt.c > CMakeFiles/minizip.dir/mz_crypt.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_crypt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_crypt.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_crypt.c -o CMakeFiles/minizip.dir/mz_crypt.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_os.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_os.c.obj: Externals/minizip/mz_os.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_os.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_os.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_os.c

Externals/minizip/CMakeFiles/minizip.dir/mz_os.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_os.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_os.c > CMakeFiles/minizip.dir/mz_os.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_os.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_os.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_os.c -o CMakeFiles/minizip.dir/mz_os.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_strm.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_strm.c.obj: Externals/minizip/mz_strm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_strm.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_strm.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm.c

Externals/minizip/CMakeFiles/minizip.dir/mz_strm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm.c > CMakeFiles/minizip.dir/mz_strm.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_strm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm.c -o CMakeFiles/minizip.dir/mz_strm.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.obj: Externals/minizip/mz_strm_buf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_strm_buf.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_buf.c

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_buf.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_buf.c > CMakeFiles/minizip.dir/mz_strm_buf.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_buf.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_buf.c -o CMakeFiles/minizip.dir/mz_strm_buf.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.obj: Externals/minizip/mz_strm_mem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_strm_mem.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_mem.c

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_mem.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_mem.c > CMakeFiles/minizip.dir/mz_strm_mem.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_mem.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_mem.c -o CMakeFiles/minizip.dir/mz_strm_mem.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.obj: Externals/minizip/mz_strm_split.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_strm_split.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_split.c

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_split.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_split.c > CMakeFiles/minizip.dir/mz_strm_split.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_split.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_split.c -o CMakeFiles/minizip.dir/mz_strm_split.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.obj: Externals/minizip/mz_strm_zlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_strm_zlib.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_zlib.c

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_zlib.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_zlib.c > CMakeFiles/minizip.dir/mz_strm_zlib.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_zlib.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_strm_zlib.c -o CMakeFiles/minizip.dir/mz_strm_zlib.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_zip.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_zip.c.obj: Externals/minizip/mz_zip.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_zip.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_zip.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_zip.c

Externals/minizip/CMakeFiles/minizip.dir/mz_zip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_zip.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_zip.c > CMakeFiles/minizip.dir/mz_zip.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_zip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_zip.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_zip.c -o CMakeFiles/minizip.dir/mz_zip.c.s

Externals/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.obj: Externals/minizip/CMakeFiles/minizip.dir/flags.make
Externals/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.obj: Externals/minizip/mz_zip_rw.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object Externals/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.obj"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minizip.dir/mz_zip_rw.c.obj   -c /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_zip_rw.c

Externals/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_zip_rw.c.i"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_zip_rw.c > CMakeFiles/minizip.dir/mz_zip_rw.c.i

Externals/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_zip_rw.c.s"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && /opt/devkitpro/devkitA64/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ev/ClangProjects/dolphin-switch/Externals/minizip/mz_zip_rw.c -o CMakeFiles/minizip.dir/mz_zip_rw.c.s

# Object files for target minizip
minizip_OBJECTS = \
"CMakeFiles/minizip.dir/mz_compat.c.obj" \
"CMakeFiles/minizip.dir/mz_crypt.c.obj" \
"CMakeFiles/minizip.dir/mz_os.c.obj" \
"CMakeFiles/minizip.dir/mz_strm.c.obj" \
"CMakeFiles/minizip.dir/mz_strm_buf.c.obj" \
"CMakeFiles/minizip.dir/mz_strm_mem.c.obj" \
"CMakeFiles/minizip.dir/mz_strm_split.c.obj" \
"CMakeFiles/minizip.dir/mz_strm_zlib.c.obj" \
"CMakeFiles/minizip.dir/mz_zip.c.obj" \
"CMakeFiles/minizip.dir/mz_zip_rw.c.obj"

# External object files for target minizip
minizip_EXTERNAL_OBJECTS =

Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_compat.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_crypt.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_os.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_strm.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_zip.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.obj
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/build.make
Externals/minizip/libminizip.a: Externals/minizip/CMakeFiles/minizip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ev/ClangProjects/dolphin-switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library libminizip.a"
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && $(CMAKE_COMMAND) -P CMakeFiles/minizip.dir/cmake_clean_target.cmake
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minizip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Externals/minizip/CMakeFiles/minizip.dir/build: Externals/minizip/libminizip.a

.PHONY : Externals/minizip/CMakeFiles/minizip.dir/build

Externals/minizip/CMakeFiles/minizip.dir/clean:
	cd /home/ev/ClangProjects/dolphin-switch/Externals/minizip && $(CMAKE_COMMAND) -P CMakeFiles/minizip.dir/cmake_clean.cmake
.PHONY : Externals/minizip/CMakeFiles/minizip.dir/clean

Externals/minizip/CMakeFiles/minizip.dir/depend:
	cd /home/ev/ClangProjects/dolphin-switch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Externals/minizip /home/ev/ClangProjects/dolphin-switch /home/ev/ClangProjects/dolphin-switch/Externals/minizip /home/ev/ClangProjects/dolphin-switch/Externals/minizip/CMakeFiles/minizip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Externals/minizip/CMakeFiles/minizip.dir/depend

