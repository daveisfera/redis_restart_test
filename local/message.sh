#!/usr/bin/env sh

docker exec -it redis_restart_test_service redis-cli PUBLISH redis_restart_test "Test Message"
