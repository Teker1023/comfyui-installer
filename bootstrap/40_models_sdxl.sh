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
