#!/usr/bin/env bash
set -e

echo "========================================"
echo " COMFYUI BOOTSTRAP INSTALL START "
echo "========================================"

BOOTSTRAP_DIR="$(cd "$(dirname "$0")/bootstrap" && pwd)"

run_step () {
  local script="$1"
  echo ""
  echo ">>> Running $script"
  bash "$BOOTSTRAP_DIR/$script"
}

run_step "00_system_base.sh"
run_step "20_comfyui_core.sh"
run_step "10_python_venv.sh"
run_step "30_comfyui_custom_nodes.sh"
run_step "40_models_sdxl.sh"

echo ""
echo "========================================"
echo " BOOTSTRAP INSTALL COMPLETE "
echo "========================================"
echo ""
echo "To start ComfyUI run:"
echo "bash bootstrap/90_start_comfyui.sh"
