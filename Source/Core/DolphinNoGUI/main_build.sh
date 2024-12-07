#!/bin/bash

# Remove old build files
rm -rf build
rm -rf CMakeFiles

# Create build directory
mkdir -p build
cd build

# Run CMake
cmake ..

# Build the project
make -j$(nproc)

# Copy the NRO file to a convenient location
if [ -f dolphin.nro ]; then
    echo "Build successful! NRO file created at: build/dolphin-nogui.nro"
fi
