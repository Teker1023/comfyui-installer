#!/usr/bin/env bash
set -e

echo "=============================="
echo " [40] MODELS: SDXL "
echo "=============================="

CHECKPOINT_DIR="/workspace/ComfyUI/models/checkpoints"
MODEL_FILE="sd_xl_base_1.0.safetensors"
MODEL_PATH="$CHECKPOINT_DIR/$MODEL_FILE"

mkdir -p "$CHECKPOINT_DIR"
cd "$CHECKPOINT_DIR"

if [ ! -f "$MODEL_PATH" ]; then
  echo "Downloading SDXL base model..."
  wget -O "$MODEL_FILE" \
    https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
else
  echo "SDXL model already exists, skipping download"
fi

echo "=============================="
echo " SDXL MODEL READY "
echo "=============================="

echo "=============================="
echo " Download DreamShaper 8"
echo "=============================="

cd /workspace/ComfyUI/models/checkpoints

if [ ! -f dreamshaper_8.safetensors ]; then
  wget -c -O dreamshaper_8.safetensors \
  https://huggingface.co/digiplay/DreamShaper_8/resolve/main/dreamshaper_8.safetensors
else
  echo "DreamShaper 8 already exists, skipping"
fi

echo "=== Downloading Juggernaut XL v9 checkpoint ==="

cd /workspace/ComfyUI/models/checkpoints

if [ ! -f "Juggernaut-XL_v9_RunDiffusionPhoto_v2.safetensors" ]; then
  wget -c \
  https://huggingface.co/RunDiffusion/Juggernaut-XL-v9/resolve/main/Juggernaut-XL_v9_RunDiffusionPhoto_v2.safetensors
else
  echo "Juggernaut XL v9 already exists"
fi
