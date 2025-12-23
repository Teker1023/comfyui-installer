#!/usr/bin/env bash
set -e

echo "=============================="
echo " [00] SYSTEM BASE SETUP "
echo "=============================="

# Оновлення списку пакетів (без upgrade — безпечніше для GPU)
apt update -y

# Базові системні утиліти
apt install -y \
  git \
  curl \
  wget \
  ca-certificates \
  software-properties-common \
  python3 \
  python3-pip \
  python3-venv

echo "=============================="
echo " SYSTEM BASE READY "
echo "=============================="
