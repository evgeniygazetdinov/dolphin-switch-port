#!/bin/bash

# Проверяем переменные окружения
echo "Checking environment..."
echo "DEVKITPRO = $DEVKITPRO"
echo "DEVKITA64 = $DEVKITA64"

# Проверяем наличие инструментов
if [ -f "${DEVKITPRO}/tools/bin/elf2nro" ]; then
    echo "elf2nro found"
else
    echo "elf2nro not found!"
    exit 1
fi

# Очищаем и создаем директорию для сборки
rm -rf build
mkdir -p build
cd build

# Конфигурируем с выводом отладочной информации
cmake -DCMAKE_TOOLCHAIN_FILE=/opt/devkitpro/cmake/Switch.cmake \
      -DENABLE_SDL=OFF \
      -DENABLE_QT=OFF \
      -DENABLE_LTO=OFF \
      -DENABLE_TESTS=OFF \
      -DUSE_DISCORD_PRESENCE=OFF \
      -DENABLE_HEADLESS=ON \
      -DENABLE_NOGUI=ON \
      -DENABLE_CLI_TOOL=OFF \
      -DENABLE_AUTOUPDATE=OFF \
      -DENABLE_ANALYTICS=OFF \
      -DENABLE_VULKAN=OFF \
      -S .. \
      -B . \
      --debug-output

# Собираем с подробным выводом
make VERBOSE=1

# Проверяем результаты
echo "Checking build results..."
echo "Looking for .elf files:"
find . -name "*.elf"
echo "Looking for .nro files:"
find . -name "*.nro"
echo "Directory contents:"
ls -la