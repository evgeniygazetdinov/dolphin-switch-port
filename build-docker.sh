#!/bin/bash

# Скрипт для сборки проекта под Nintendo Switch через Docker

set -e

echo "Building Dolphin for Nintendo Switch using Docker..."

# Очищаем старые CMake файлы из корня (если они есть)
echo "Cleaning old CMake files from root..."
rm -f CMakeCache.txt cmake_install.cmake CPackConfig.cmake CPackSourceConfig.cmake 2>/dev/null || true
rm -rf CMakeFiles 2>/dev/null || true

# Запускаем сборку в Docker контейнере
docker run --rm \
  -v "$(pwd):/project" \
  -w /project \
  devkitpro/devkita64 \
  make

echo ""
echo "Build completed! Checking results..."
echo "Looking for .elf files:"
find build -name "*.elf" 2>/dev/null || echo "No .elf files found"
echo "Looking for .nro files:"
find build -name "*.nro" 2>/dev/null || echo "No .nro files found"
