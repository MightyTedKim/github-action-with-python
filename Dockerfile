FROM python:3.7-slim

WORKDIR /app  # 작업 할 디렉터리를 지정
COPY requirements.txt .  # requirements를 /app 안으로 COPY
COPY requirements-test.txt .  # requirements를 /app 안으로 COPY

RUN pip install -r requirements.txt  # 의존성 설치
RUN pip install -r requirements-test.txt  # 의존성 설치

COPY . .  # Source Code를 /app 안으로 COPY

RUN pytest  # pytest 실행
