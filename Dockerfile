FROM python:3.11
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install -y libssl-dev libsasl2-dev xmlsec1

WORKDIR /tmp

COPY requirements.txt /tmp
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
