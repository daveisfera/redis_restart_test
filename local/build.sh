#!/usr/bin/env sh

cd "$(dirname "$0")/.." || exit

docker build -t redis_restart_test:local .
