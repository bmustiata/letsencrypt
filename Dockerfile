FROM ubuntu:16.04
MAINTAINER Bogdan Mustiata <bogdan.mustiata@gmail.com>

ENV REFRESH_DATE="2017-10-19 09:02:07"

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update -y && \
    apt-get install -y -q software-properties-common && \
    add-apt-repository -y ppa:certbot/certbot && \
    apt-get update -y && \
    apt-get install -y python-certbot-nginx

CMD certbot renew

