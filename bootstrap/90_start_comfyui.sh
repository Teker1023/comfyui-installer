#!/usr/bin/env bash
set -e

echo "=============================="
echo " [90] START COMFYUI "
echo "=============================="

cd /workspace/ComfyUI

# Активуємо venv
source venv/bin/activate

# Запуск ComfyUI
python main.py --listen 127.0.0.1 --port 8188
