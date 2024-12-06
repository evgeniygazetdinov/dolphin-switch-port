# CMake generated Testfile for 
# Source directory: /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core
# Build directory: /home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(MMIOTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/MMIOTest.elf")
set_tests_properties(MMIOTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;1;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
add_test(PageFaultTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/PageFaultTest.elf")
set_tests_properties(PageFaultTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;2;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
add_test(CoreTimingTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/CoreTimingTest.elf")
set_tests_properties(CoreTimingTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;3;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
add_test(DSPAcceleratorTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/DSPAcceleratorTest.elf")
set_tests_properties(DSPAcceleratorTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;5;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
add_test(DSPAssemblyTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/DSPAssemblyTest.elf")
set_tests_properties(DSPAssemblyTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;6;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
add_test(ESFormatsTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/ESFormatsTest.elf")
set_tests_properties(ESFormatsTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;14;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
add_test(FileSystemTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/FileSystemTest.elf")
set_tests_properties(FileSystemTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;16;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
add_test(PowerPCTest "/home/ev/ClangProjects/dolphin-switch/Binaries/Tests/PowerPCTest.elf")
set_tests_properties(PowerPCTest PROPERTIES  _BACKTRACE_TRIPLES "/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/CMakeLists.txt;23;add_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;25;add_dolphin_test;/home/ev/ClangProjects/dolphin-switch/Source/UnitTests/Core/CMakeLists.txt;0;")
