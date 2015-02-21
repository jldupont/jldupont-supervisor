FROM ubuntu:14.04
MAINTAINER Jean-Lou Dupont <jl@jldupont.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list
RUN apt-get install python-pip
RUN pip install supervisor
