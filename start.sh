#!/usr/bin/env bash
set -e
python -m http.server "${PORT:-8080}"