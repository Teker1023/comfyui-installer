#!/usr/bin/env bash
set -e

echo "=============================="
echo " ComfyUI AUTO INSTALL START "
echo "=============================="

# 1. Оновлення системи
apt update -y
apt upgrade -y

# 2. Встановлення базових пакетів
apt install -y git python3 python3-pip python3-venv wget curl

# 3. Перехід у робочу директорію
cd /workspace || mkdir -p /workspace && cd /workspace

# 4. Клонування ComfyUI
if [ ! -d "ComfyUI" ]; then
  git clone https://github.com/comfyanonymous/ComfyUI.git
else
  echo "ComfyUI вже існує, пропускаємо клонування"
fi

cd /workspace/ComfyUI

# 5. Встановлення Python-залежностей ComfyUI
pip3 install --upgrade pip
pip3 install -r requirements.txt

echo "=============================="
echo " BASE COMFYUI INSTALLED "
echo " Run: cd /workspace/ComfyUI && python main.py"
echo "=============================="
