#!/bin/bash

# TODO: prompt user for info

HOSTNAME="pihole"
STATIC_IP="192.168.0.107"

apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y
apt-get clean

apt-get install -y vim fail2ban

# update MOTD
sh setupMOTD.sh

# update hostfiles
cat hostnames >> /etc/hosts

# set static ip

# setup hostname
echo $HOSTNAME > /etc/hostname

# setup ssh
ssh-keygen -t rsa -b 4096 -C "$HOSTNAME"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# update authorized keys
mv authorized_keys.txt ~/.ssh/authorized_keys


