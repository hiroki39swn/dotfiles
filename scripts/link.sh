#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR/home"

# Link all app packages into HOME.
for pkg in */; do
  [ -d "$pkg" ] || continue
  stow -v -R -t "$HOME" "${pkg%/}"
done

echo "[link] Completed"
