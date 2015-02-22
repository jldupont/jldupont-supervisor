FROM ubuntu:14.04
MAINTAINER Jean-Lou Dupont <jl@jldupont.com>

RUN apt-get update && apt-get install -y python-pip
RUN pip install supervisor --pre

RUN mkdir -p /var/log/supervisor /home/bin /home/config/supervisor /home/python

COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]