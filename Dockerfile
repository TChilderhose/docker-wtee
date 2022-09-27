FROM python:3.10-alpine

RUN pip install --no-cache-dir wtee

EXPOSE 8080/tcp

ENTRYPOINT [ "tail" ]
CMD [ "-f", "/log", "|", "wtee", "|", "nl" ]