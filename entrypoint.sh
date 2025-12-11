#!/bin/bash
set -e

if [ -n "${OAUTH_CREDS_JSON:-}" ]; then
  echo "Writing oauth_creds.json from env..."
  printf "%s" "$OAUTH_CREDS_JSON" > oauth_creds.json
  chmod 600 oauth_creds.json
fi

export PORT=${PORT:-8888}
export GEMINI_AUTH_PASSWORD=${GEMINI_AUTH_PASSWORD:-123456}

exec "$@"
