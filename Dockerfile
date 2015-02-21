FROM ubuntu:14.04
MAINTAINER Jean-Lou Dupont <jl@jldupont.com>

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install supervisor
