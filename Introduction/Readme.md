## Mathematical task

$$\sum_{n = 0}^{10^8} n$$

## Settings

### Dockerfile

```bash
FROM ubuntu
ENTRYPOINT ["/bin/sh", "-c", "echo Container started; trap 'exit 0' 15; while sleep 1 & wait $!; do :; done"]
```

### docker-compose.yml

```bash
version: "3.9"
services:
  server:
    build: .
    networks:
      - server
    volumes:
      - server:/server
volumes:
  server:
    name: server-volum
networks:
  server:
    name: server-network
```

## Running

```bash
docker-compose up -d
docker-compose exec server /bin/bash
```

## Cleaning

```bash
docker-compose down
```