FROM ubuntu:16.04
FROM tomcat:8.0
MAINTAINER Proxytem Software Services pvt.ltd
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y openssh-server
RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y net-tools
RUN useradd -m -d /home/sigma -s /bin/bash gama
RUN passwd gama "gamma" 
RUN chmod 777 -R /home
EXPOSE 80
ENTRYPOINT service ssh restart && bash

