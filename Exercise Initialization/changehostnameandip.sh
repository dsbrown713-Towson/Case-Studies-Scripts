#!/bin/bash
OLD_HOSTNAME="$( hostname )"
echo "Enter the number of the country this system will be a part of:"
echo "1: France"
echo "2: Germany"
echo "3: England"
echo "4: Spain"
echo "5: Japan"
echo "6: Russia"
echo "7: China"
read COUNTRY
case $COUNTRY in
	1)
		NEW_HOSTNAME="Marseille"
		ifconfig eth0 172.16.193.17 netmask 255.248.0.0
		;;
	2)
		NEW_HOSTNAME="Hamburg"
		ifconfig eth0 172.17.176.45 netmask 255.248.0.0
		;;
	3)
		NEW_HOSTNAME="Birmingham"
		ifconfig eth0 172.18.176.100 netmask 255.248.0.0
		;;
	4)
		NEW_HOSTNAME="Barcelona"
		ifconfig eth0 172.19.63.17 netmask 255.248.0.0
		;;
	5)
		NEW_HOSTNAME="Yokohama"
		ifconfig eth0 172.20.252.73 netmask 255.248.0.0
		;;
	6)
		NEW_HOSTNAME="Saint-Petersburg"
		ifconfig eth0 172.21.12.23 netmask 255.248.0.0
		;;
	7)
		NEW_HOSTNAME="Beijing"
		ifconfig eth0 172.22.108.249 netmask 255.248.0.0
		;;
esac

echo "Changing hostname from $OLD_HOSTNAME to $NEW_HOSTNAME..."
hostname "$NEW_HOSTNAME"
sed -i "s/HOSTNAME=.*/HOSTNAME=$NEW_HOSTNAME/g" /etc/sysconfig/network	 
if [ -n "$( grep "$OLD_HOSTNAME" /etc/hosts )" ]; then
	sed -i "s/$OLD_HOSTNAME/$NEW_HOSTNAME/g" /etc/hosts
else
	echo -e "$( hostname -I | awk '{ print $1 }' )\t$NEW_HOSTNAME" >> /etc/hosts
fi

