#!/usr/bin/env bash
set -e

echo "=============================="
echo " [20] COMFYUI CORE SETUP "
echo "=============================="

cd /workspace

# Клонуємо ComfyUI, якщо ще не існує
if [ ! -d "ComfyUI" ]; then
  echo "Cloning ComfyUI repository..."
  git clone https://github.com/comfyanonymous/ComfyUI.git
else
  echo "ComfyUI already exists, skipping clone"
fi

# Перевірка наявності main.py
if [ ! -f "/workspace/ComfyUI/main.py" ]; then
  echo "ERROR: ComfyUI main.py not found!"
  exit 1
fi

echo "=============================="
echo " COMFYUI CORE READY "
echo "=============================="
