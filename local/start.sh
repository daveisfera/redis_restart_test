#!/usr/bin/env sh

cd "$(dirname "$0")/.." || exit

docker compose \
  --project-name redis_restart_test \
  -f local/redis_restart_test.yml \
  up -d --always-recreate-deps --no-build
