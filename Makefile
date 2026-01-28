.PHONY: all clean configure build

# Переменные для сборки
BUILD_DIR = build
CMAKE_TOOLCHAIN = /opt/devkitpro/cmake/Switch.cmake

# Цель по умолчанию
all: configure build

# Конфигурация CMake
configure:
	@echo "Configuring CMake for Nintendo Switch..."
	@mkdir -p $(BUILD_DIR)
	@echo "Removing old CMake files from root if they exist..."
	@rm -f CMakeCache.txt cmake_install.cmake CPackConfig.cmake CPackSourceConfig.cmake 2>/dev/null || true
	@rm -rf CMakeFiles 2>/dev/null || true
	cd $(BUILD_DIR) && cmake \
		-DCMAKE_TOOLCHAIN_FILE=$(CMAKE_TOOLCHAIN) \
		-DCMAKE_BUILD_TYPE=Debug \
		-DCMAKE_CXX_FLAGS="-D_DEBUG -DDEBUG_LOG=1" \
		-DCMAKE_C_FLAGS="-D_DEBUG -DDEBUG_LOG=1" \
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
		-B .

# Сборка проекта
build:
	@echo "Building project..."
	cd $(BUILD_DIR) && make VERBOSE=1

# Очистка
clean:
	@echo "Cleaning build directory and old CMake files..."
	rm -rf $(BUILD_DIR)
	@echo "Removing old CMake generated files from root..."
	@rm -f CMakeCache.txt cmake_install.cmake CPackConfig.cmake CPackSourceConfig.cmake
	@rm -rf CMakeFiles

# Проверка результатов сборки
check:
	@echo "Checking build results..."
	@echo "Looking for .elf files:"
	@find $(BUILD_DIR) -name "*.elf" 2>/dev/null || echo "No .elf files found"
	@echo "Looking for .nro files:"
	@find $(BUILD_DIR) -name "*.nro" 2>/dev/null || echo "No .nro files found"
