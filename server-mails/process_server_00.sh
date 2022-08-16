#!/bin/bash

cd /etc/postfix
rm main.cf

cd ../dovecot
rm dovecot.conf

cd conf.d
rm 10-auth.conf 10-mail.conf 10-master.conf