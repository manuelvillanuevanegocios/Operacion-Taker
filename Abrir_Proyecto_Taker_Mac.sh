#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
FILE="$SCRIPT_DIR/ProyectoTaker.html"

# Try Chrome
if open -a "Google Chrome" --args --app="file://$FILE" --window-size=1200,850 2>/dev/null; then
  exit 0
fi
# Try Chromium
if open -a "Chromium" --args --app="file://$FILE" 2>/dev/null; then
  exit 0
fi
# Fallback: default browser
open "$FILE"
