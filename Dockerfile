FROM python:3.9-alpine

RUN pip install --no-cache-dir wtee

ENV WTEE_LINES=50
ENV WTEE_PORT=8080
ENV WTEE_FILEPATH="/file.log"

COPY docker-healthcheck.sh /
RUN chmod +x /docker-healthcheck.sh
HEALTHCHECK --start-period=30s CMD /docker-healthcheck.sh

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]