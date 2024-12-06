#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Cleaning build artifacts...${NC}"

# Remove common build directories
rm -rf build/
rm -rf Build/
rm -rf bin/
rm -rf obj/

# Remove common build artifacts
find . -type f -name "*.o" -delete
find . -type f -name "*.a" -delete
find . -type f -name "*.so" -delete
find . -type f -name "*.elf" -delete
find . -type f -name "*.nro" -delete
find . -type f -name "*.nacp" -delete
find . -type f -name "*.nso" -delete
find . -type f -name "*.d" -delete
find . -type f -name "*.map" -delete
find . -type f -name "*.lst" -delete
find . -type f -name "*.pch" -delete
find . -type f -name "*.gch" -delete
find . -type f -name "*.deps" -delete
find . -type f -name "*.gcda" -delete
find . -type f -name "*.gcno" -delete
find . -type f -name "*.ilk" -delete
find . -type f -name "*.exp" -delete
find . -type f -name "*.lib" -delete
find . -type f -name "*.dll" -delete
find . -type f -name "*.exe" -delete
find . -type f -name "Makefile.in" -delete

# Remove CMake generated files
find . -type f -name "CMakeCache.txt" -delete
find . -type f -name "cmake_install.cmake" -delete
find . -type d -name "CMakeFiles" -exec rm -rf {} +

echo -e "${GREEN}Cleanup complete!${NC}"
