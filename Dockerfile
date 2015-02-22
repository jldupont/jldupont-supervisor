FROM ubuntu:14.04
MAINTAINER Jean-Lou Dupont <jl@jldupont.com>

RUN apt-get update && apt-get install -y python-pip
RUN pip install supervisor --pre

RUN mkdir -p /var/log /home/bin /home/config/supervisor /home/python

ADD ./supervisord.init.sh /etc/init.d/supervisord
ADD ./supervisord.conf    /etc/supervisord.conf

RUN chmod +x /etc/init.d/supervisord

CMD ["/usr/bin/supervisord"]