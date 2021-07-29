FROM python:3.7-alpine

RUN mkdir /app
WORKDIR /app

COPY urlsCheck.py urls.txt /app/
CMD ["python3", "/app/urlsCheck.py"]
