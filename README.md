# docker-wtee

This is a docker implmentation of [wtee](https://github.com/gvalkov/wtee).

## Run

```
  wtee:
    image:  ghcr.io/tchilderhose/docker-wtee:latest
    container_name: wtee
    ports:
      - "8080:8080/tcp"
    environment:
      - WTEE_LINES=50
      - WTEE_PORT=8080
      - WTEE_FILEPATH="/file.log"
    volumes:
      - /path/to/file.log:/file.log:ro
```

## Reverse Proxy

See the [example](https://wtee.readthedocs.io/en/latest/#nginx) of the nginx config provided by gvalkov
