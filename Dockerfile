
FROM python:3.8

ENV PYTHONUNBUFFERED=1

WORKDIR /microservice

COPY requirements.txt /microservice/

RUN python -m pip install --upgrade pip

RUN python -m pip install -r requirements.txt

COPY . /microservice/
