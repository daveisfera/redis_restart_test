FROM python:3.14.3-slim-trixie

WORKDIR /usr/src/app

COPY --link requirements.txt /usr/src/app/
RUN pip3 install --require-hashes -r requirements.txt

COPY --link redis_restart_test.py /usr/src/app/

CMD ["python3", "redis_restart_test.py"]
