FROM ubuntu:16.04 

MAINTAINER Chien Nguyen "dangchienhsgs@gmail.com"
RUN apt-get update -y
RUN apt-get install -y build-essential libblas-dev liblapack-dev libatlas-base-dev gfortran libpq-dev libpq-dev

RUN apt-get install -y python-pip
RUN pip install pip --upgrade

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt


