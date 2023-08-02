#Dockerfile para SMTP e IMAP
FROM ubuntu:latest

WORKDIR /dir

RUN apt-get update \
    && apt-get install -y \
    postfix \
    dovecot-core \
    dovecot-imapd \
    iputils-ping \
    net-tools \
    telnet \
    openssl \
    nano

RUN apt-get upgrade -y

COPY users.sh .
RUN chmod +x users.sh
RUN bash users.sh

COPY /imap_dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY /imap_dovecot/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY /imap_dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY /imap_dovecot/dovecot.conf /etc/dovecot/dovecot.conf

COPY /smtp_postfix/main.cf /etc/postfix/main.cf

EXPOSE 25 110 143 993 995

CMD tail -F /dev/null