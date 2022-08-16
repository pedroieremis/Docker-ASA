#!/bin/bash

op=8
while test $op != 0; do
	echo "------------------------------------------------------"
	echo "-------------------- Admin Docker --------------------"
	echo "------------------------------------------------------"
	echo "0 - Stop script"
	echo "1 - List Containers in execution"
	echo "2 - List All Containers"
	echo "3 - List Images"
	echo "4 - Stop, Start or Restart bind9 in ns1"
	echo "5 - View Logs ns1"
	echo "6 - Inspect Container"
	echo "7 - Delete image"
	echo "8 - Delete volumes not in use"
	echo "9 - Delete other container"
	echo "Option> " ; read op
	echo
	case $op in
	0)
		echo "Stopedd";;
	1)
		docker ps;;
	2)
		docker ps -a;;
	3)
		docker images;;
	4)
		echo "1 - stop | 2 - restart | 3 - start"
		read func
		case $func in
		1)
			docker exec ns1 /etc/init.d/named stop;;
		2)
			docker exec ns1 /etc/init.d/named restart;;
		3)
			docker exec ns1 /etc/init.d/named start;;
		*)
			echo "Invalid Option"
		esac;;
	5)
		docker exec ns1 named -g;;
	6)
		echo "Name of container> " ; read name
		docker inspect $name;;
	7)
		echo "Name of image> " ; read named
		docker rmi -f $named;;
	8)
		docker volume prune -f;;

	9)
		echo "Name of container> " ; read name
                docker rm -f $name;;
	*)
		echo "Invalid option"
	esac
done
