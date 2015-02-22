FROM ubuntu:14.04
MAINTAINER Jean-Lou Dupont <jl@jldupont.com>

RUN apt-get update && apt-get install -y python-pip
RUN pip install supervisor --pre

RUN mkdir -p /var/log /var/log/supervisor /root/config/supervisor

COPY ./supervisord.init.sh /etc/init.d/supervisord
COPY ./supervisord.conf    /etc/supervisord.conf

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /etc/init.d/supervisord
RUN chmod +x /docker_entrypoint.sh

CMD ["/docker-entrypoint.sh"]