FROM python:3.7-slim

WORKDIR /app
COPY requirements.txt .
COPY requirements-test.txt .

RUN pip install -r requirements.txt
RUN pip install -r requirements-test.txt

COPY . .

RUN pytest
