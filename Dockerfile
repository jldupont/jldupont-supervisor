FROM ubuntu:14.04
MAINTAINER Jean-Lou Dupont <jl@jldupont.com>

RUN apt-get install python-pip
RUN pip install supervisor
