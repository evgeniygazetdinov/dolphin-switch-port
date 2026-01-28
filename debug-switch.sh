#!/bin/bash

# Скрипт для дебага Dolphin на Nintendo Switch через nxlink

set -e

SWITCH_IP="${SWITCH_IP:-192.168.0.106}"
NRO_FILE="${NRO_FILE:-build/Source/Core/DolphinNoGUI/dolphin-emu.nro}"

echo "=== Debugging Dolphin on Nintendo Switch ==="
echo "Switch IP: $SWITCH_IP"
echo "NRO file: $NRO_FILE"
echo ""

# Проверяем существование NRO файла
if [ ! -f "$NRO_FILE" ]; then
    echo "Error: NRO file not found at $NRO_FILE"
    echo "Please build the project first:"
    echo "  docker run --rm -v \"\$(pwd):/project\" -w /project devkitpro/devkita64 make"
    exit 1
fi

echo "Make sure:"
echo "  1. Your Switch is running hbmenu"
echo "  2. Press Y in hbmenu to activate netloader"
echo "  3. Your Switch IP is $SWITCH_IP"
echo ""
read -p "Press Enter to continue or Ctrl+C to cancel..."

echo ""
echo "Uploading and running $NRO_FILE on Switch..."
echo ""

# Запускаем nxlink через Docker
docker run --rm -it --network host \
  -v "$(pwd):/project" \
  -w /project \
  devkitpro/devkita64 \
  /opt/devkitpro/tools/bin/nxlink -a "$SWITCH_IP" "$NRO_FILE"
