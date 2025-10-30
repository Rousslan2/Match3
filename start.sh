#!/usr/bin/env bash
set -e

# If a 'web' folder exists (GDevelop Web export), serve it; otherwise serve current dir.
if [ -d "web" ]; then
  cd web
fi

if [ ! -f "index.html" ]; then
  echo "Warning: index.html not found. Did you export the game to the 'web/' folder?"
fi

python -m http.server "${PORT:-8080}"