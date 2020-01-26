#!/bin/bash
echo "who?"
read username
grep ^$username /etc/passwd > /dev/null 2>&1
if [ $? -eq 0 ]
then
	echo "$username is already registered."
else
	echo "$username is not registered."
useradd $username
passwd $username
echo "$username is registered."
fi
