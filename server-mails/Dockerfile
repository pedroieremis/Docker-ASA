#Dockerfile para SMTP e IMAP
FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y \
    postfix \
    dovecot-core \
    dovecot-imapd \
    iputils-ping \
    net-tools \
    telnet \
    nano

RUN apt-get upgrade -y

COPY process_server_00.sh .
RUN ./process_server_00.sh

COPY /imap_dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY /imap_dovecot/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY /imap_dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY /imap_dovecot/dovecot.conf /etc/dovecot/dovecot.conf

COPY /smtp_postfix/main.cf /etc/postfix/main.cf

EXPOSE 25
EXPOSE 143
EXPOSE 587

CMD tail -F /dev/null