FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y \
    bind9 \
    bind9-doc \
    bind9utils \
    dnsutils \
    iputils-ping \
    nano

RUN apt-get upgrade -y

EXPOSE 53

CMD /usr/sbin/named ; tail -F /dev/null