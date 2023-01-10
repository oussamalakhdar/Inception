#!/bin/bash

adduser --disabled-password --gecos '' oussama

echo "oussama" | tee -a /etc/vsftpd.userlist
echo "oussama:1234" | chpasswd
mkdir -p /home/oussama/empty
chown oussama:oussama /home/oussama/wordpress
chown oussama:oussama /home/oussama/empty

exec vsftpd
