FROM python:3.7.3-alpine

RUN apk update && apk --no-cache add \
    build-base \
    openssl \
    git \
    bash \
    curl

RUN pip install --upgrade pip

RUN mkdir /app
ADD . /app/
WORKDIR /app

RUN pip install -r requirements.txt
