# Description

Test of redis-py for when redis restarts

# Instructions
```
./build.sh
./start.sh
./restart.sh
./stop.sh
```

You can view the logs with this command:
```
docker logs -tf --tail 100 redis_restart_test_app
```

And you should see this log when the `redis` service is restarted by running `./restart.sh`:
```
ConnectionError: Error 111 connecting to redis_restart_test_service:6379. Connection refused.
```
