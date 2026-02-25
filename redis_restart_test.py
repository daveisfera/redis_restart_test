from redis import Redis
from redis.exceptions import ConnectionError


def _main():
    print("Started", flush=True)
    redis_client = Redis(host="redis_restart_test_service", protocol=3)
    with redis_client.pubsub(ignore_subscribe_messages=True, push_handler_func=lambda x: x) as pubsub:
        print("Connected", flush=True)
        pubsub.subscribe("redis_restart_test")

        try:
            while True:
                if message := pubsub.get_message(timeout=30):
                    print(message, flush=True)
                else:
                    print("Timeout", flush=True)
        except ConnectionError as e:
            print("ConnectionError:", e, flush=True)


if __name__ == "__main__":
    _main()
