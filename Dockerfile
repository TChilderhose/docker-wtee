FROM python:3.10-alpine

RUN pip install --no-cache-dir wtee

EXPOSE 8080/tcp

CMD [ "tail", "-f", "/file.log", "|", "wtee", "|", "nl" ]