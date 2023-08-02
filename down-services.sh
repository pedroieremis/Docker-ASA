#!/bin/bash

docker compose down

docker rmi -f dns
docker rmi -f servermails
docker rmi -f webmail
docker rmi -f web01
docker rmi -f proxy