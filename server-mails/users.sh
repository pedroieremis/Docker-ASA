#!/bin/bash

adduser -q --disabled-password --gecos " " pedro
adduser -q --disabled-password --gecos " " ieremis
adduser -q --disabled-password --gecos " " sales

usermod -p $(openssl passwd -1 123@senha) -s /bin/bash pedro
usermod -p $(openssl passwd -1 123@senha) -s /bin/bash ieremis
usermod -p $(openssl passwd -1 123@senha) -s /bin/bash sales