#!/usr/bin/env bash
set -euo pipefail

required=(git stow)
for cmd in "${required[@]}"; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "[doctor] missing command: $cmd" >&2
    exit 1
  fi
done

echo "[doctor] OK"
