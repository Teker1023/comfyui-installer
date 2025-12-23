#!/usr/bin/env bash
set -e

echo "=============================="
echo " [10] PYTHON VENV SETUP "
echo "=============================="

cd /workspace

# Створюємо venv тільки якщо його ще немає
if [ ! -d "ComfyUI/venv" ]; then
  echo "Creating python venv..."
  python3 -m venv ComfyUI/venv
else
  echo "Python venv already exists"
fi

# Активуємо venv
source ComfyUI/venv/bin/activate

# Оновлюємо pip
pip install --upgrade pip

# Встановлюємо базові залежності ComfyUI
pip install -r ComfyUI/requirements.txt

# ДОДАТКОВІ бібліотеки (з твого ручного запуску)
pip install opencv-python

echo "=============================="
echo " PYTHON VENV READY "
echo "=============================="
