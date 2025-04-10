#!/bin/sh
# Usage: ./run-spigot.sh <refroot-dir> <out-dir> <tool-name>
# To be used with ./spigot-cli.go 

set -eu 

REFROOT_DIR="$1"
OUT_DIR="$2"
TOOL_NAME="$3"

cd "$REFROOT_DIR" &&                            \
  dpkg-refroot-env                              \
    spigot-cli bulk-download-results            \
    --tool-name "$TOOL_NAME"                    \
    --metadata-only all                         \
    > "$OUT_DIR/spigot-results.json"
