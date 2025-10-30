#!/usr/bin/env bash
set -e

# If a 'web' folder exists (GDevelop Web export), serve it; otherwise serve current dir.
SERVE_DIR="."
if [ -d "web" ]; then
  SERVE_DIR="web"
fi

if [ ! -f "$SERVE_DIR/index.html" ]; then
  echo "Warning: index.html not found in $SERVE_DIR. Did you export the game to the 'web/' folder?"
fi

# Use npx serve (Node.js) which is available on Railway
npx -y serve "$SERVE_DIR" -p "${PORT:-8080}" -l "${PORT:-8080}"