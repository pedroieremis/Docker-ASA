#!/bin/bash

echo "Altere no arquivo que abrirá o que tem 'SUAREDELOCAL' pela sua rede local com o barramento de máscara <Tecle Enter para prosseguir>" ; read
cd server-mails/smtp_postfix
nano main.cf

echo "Digite IP do Host> " ; read ip
pos1=$(echo $ip | cut -d "." -f 1)
pos2=$(echo $ip | cut -d "." -f 2)
pos3=$(echo $ip | cut -d "." -f 3)
rev=$(echo $ip | cut -d "." -f 4)
res=$(echo "$pos3.$pos2.$pos1")

echo "-------------------------------------------------------------"
echo "SUAS CONFIGURAÇÕES"
echo "IP: $ip"
echo "Último valor do IP: $rev"
echo "Rede de forma reversa: $res"
echo "Se corretas, tecle <Enter>, se erradas <Control+C> e refaça"
echo "-------------------------------------------------------------" ; read

cd ../../dns/primary
sed -i "s/primary/$ip/" db.ac.asa.br
sed -i "s/reverse1/$rev/" db.reverse.ac.asa.br
sed -i "s/reverserede/$res/" named.conf.default-zones

cd ../..
docker-compose up -d --build

docker exec servermails /etc/init.d/postfix restart
docker exec servermails /etc/init.d/dovecot restart

docker exec webmail ./process_02.sh
