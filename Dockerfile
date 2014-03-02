FROM ubuntu:precise
MAINTAINER andreas@jansson.me.uk

RUN     echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN     apt-get -y update
RUN     apt-get install -y \
            redis-server \
            python-pip

RUN     pip install envtpl

ADD     redis.conf.tpl /etc/redis/
ADD     start.sh /usr/bin/
RUN     chmod +x /usr/bin/start.sh

EXPOSE  6379

CMD     start.sh
