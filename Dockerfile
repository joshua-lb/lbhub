FROM python:3.7-alpine
RUN mkdir /app
WORKDIR /app
COPY urlsCheck.py urls.txt requirements.txt /app/
RUN pip install -r requirements.txt
CMD ["python3", "-u", "/app/urlsCheck.py"]
