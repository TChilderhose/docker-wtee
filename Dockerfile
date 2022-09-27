FROM python:3.9-alpine

RUN pip install --no-cache-dir wtee

ENV WTEE_LINES=100
ENV WTEE_PORT=8080
ENV WTEE_FILEPATH="/file.log"

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]