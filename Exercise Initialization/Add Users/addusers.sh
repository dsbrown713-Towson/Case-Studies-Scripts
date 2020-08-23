#!/bin/bash

if $UID -ne 0 ; then echo "Please run $0 as root." && exit 1; fi
file="/root/scripts/French_Names.csv"
while IFS=, read -r FirstName LastName
do
	Username = ${FirstName,,:0:1}${LastName,,}
	Password = shuf -n 1 /root/scripts/passlist
	egrep "^$Username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$Username already exists"
	else
		useradd -m -p "$Password" "$Username"
		[ $? -eq 0 ] && echo "$Username has been added" || echo "Failed to add $Username"
	fi
done <"$file"
$GROUP