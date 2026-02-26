#!/usr/bin/env bash
set -euo pipefail

# Keep bootstrap minimal and explicit; install tools with your package manager.
# macOS example:
#   brew install stow
# Linux example:
#   sudo apt-get install -y stow

echo "[bootstrap] Verify required commands"
"$(dirname "$0")/doctor.sh"

echo "[bootstrap] Run stow linking"
"$(dirname "$0")/link.sh"

echo "[bootstrap] Done"
