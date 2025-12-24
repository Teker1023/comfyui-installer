#!/usr/bin/env bash
set -e

echo "=============================="
echo " [30] COMFYUI CUSTOM NODES "
echo "=============================="

cd /workspace/ComfyUI/custom_nodes

# Створюємо папку, якщо її немає
mkdir -p /workspace/ComfyUI/custom_nodes
cd /workspace/ComfyUI/custom_nodes

clone_if_missing () {
  local repo_url=$1
  local dir_name=$2

  if [ ! -d "$dir_name" ]; then
    echo "Cloning $dir_name..."
    git clone "$repo_url"
  else
    echo "$dir_name already exists, skipping"
  fi
}

# === Custom nodes з твого генератора ===

clone_if_missing https://github.com/shiimizu/ComfyUI-TiledDiffusion.git ComfyUI-TiledDiffusion
clone_if_missing https://github.com/ltdrdata/ComfyUI-Manager.git ComfyUI-Manager
clone_if_missing https://github.com/ltdrdata/ComfyUI-Impact-Pack.git ComfyUI-Impact-Pack
clone_if_missing https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git ComfyUI-Custom-Scripts
clone_if_missing https://github.com/spinagon/ComfyUI-seamless-tiling.git ComfyUI-seamless-tiling

echo "=============================="
echo " CUSTOM NODES READY "
echo "=============================="


echo "=== Installing BRIA AI RMBG custom nodes ==="

cd /workspace/ComfyUI/custom_nodes

if [ ! -d "ComfyUI-BRIA_AI-RMBG" ]; then
  git clone https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG
else
  echo "BRIA AI RMBG already installed"
fi
