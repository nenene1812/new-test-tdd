FROM python:3.7-alpine
#search on https://hub.docker.com/_/python
MAINTAINER Nenene


ENV PYTHONUNBUFFERD 1 

COPY ./requirements.txt /requirements.txt
# copy dependencies require from project to docker 
RUN pip install -r /requirements.txt

RUN mkdir /app 
WORKDIR /app 
COPY ./app /app 

RUN adduser -D user
USER user