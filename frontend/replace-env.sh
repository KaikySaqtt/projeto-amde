#!/bin/sh
set -e

VALUE="${VITE_API_BASE_URL:-}"
echo "[replace-env] VITE_API_BASE_URL='${VALUE}'"

find /usr/share/nginx/html -type f \( -name '*.js' -o -name '*.html' \) \
  -exec sed -i "s|VITE_API_BASE_URL_PLACEHOLDER|${VALUE}|g" {} +