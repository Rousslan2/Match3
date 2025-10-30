#!/usr/bin/env bash
set -e
cd web
python -m http.server "${PORT:-8080}"

