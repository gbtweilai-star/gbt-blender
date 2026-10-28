#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_blender info
PYTHONPATH=src python -m gbt_blender check --payload '{}'
PYTHONPATH=src python -m gbt_blender run   --payload '{}'
