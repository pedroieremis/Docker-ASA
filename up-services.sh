#!/bin/bash

echo "A seguir se abrirá um arquivo automaticamente."
echo "Digite sua rede local COM o prefixo de rede ao final do arquivo, onde terá SUAREDELOCAL"
echo "Exemplo: 192.168.0.0/24"
sleep 3
echo "Tecle <ENTER> para Prosseguir" ; read

cd server-mails/smtp_postfix
nano main.cf
rede=$(cat main.cf | grep mynetworks | tail -n 1 | cut -d " " -f 4)

read -p "Digite o IP do Host > " ip
pos1=$(echo $ip | cut -d "." -f 1)
pos2=$(echo $ip | cut -d "." -f 2)
pos3=$(echo $ip | cut -d "." -f 3)
rev=$(echo $ip | cut -d "." -f 4)
res=$(echo "$pos3.$pos2.$pos1")

echo
echo "---------------------------------------------------------------- "
echo "SUAS CONFIGURAÇÕES"
echo "IP da Rede: $rede"
echo "IP do Host: $ip"
echo "Último valor do IP: $rev"
echo "Rede de forma reversa: $res"
echo "Se corretas, tecle <Enter>, se erradas, aperte <Control+C> e refaça"
echo "-------------------------------------------------------------" ; read

cd ../../dns/primary
sed -i "s/primary/$ip/" db.ac.asa.br
sed -i "s/reverse1/$rev/" db.reverse.ac.asa.br
sed -i "s/reverserede/$res/" named.conf.default-zones

cd ../..
docker compose up -d --build

docker exec servermails /etc/init.d/postfix restart
docker exec servermails /etc/init.d/dovecot restart

docker exec webmail bash process_03.sh