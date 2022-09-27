FROM python:3.9-alpine

RUN pip install --no-cache-dir wtee

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]