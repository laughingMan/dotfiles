#!/bin/bash
#https://oitibs.com/debian-jessie-dynamic-motd/

# install lsb-release & figlet to enable ASCII art
apt-get install lsb-release figlet -y

# create directory
mkdir /etc/update-motd.d/

# change to new directory
cd /etc/update-motd.d/

# create dynamic files
cp ./motd/00-header /etc/update-motd.d/
cp ./motd/10-sysinfo /etc/update-motd.d/
cp ./motd/20-updates /etc/update-motd.d/
cp ./motd/90-footer /etc/update-motd.d/

# make files executable
chmod +x /etc/update-motd.d/*

# remove MOTD file
rm /etc/motd

# symlink dynamic MOTD file
ln -s /var/run/motd /etc/motd
