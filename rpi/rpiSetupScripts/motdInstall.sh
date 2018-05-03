#!/bin/bash
#https://oitibs.com/debian-jessie-dynamic-motd/

script_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# install lsb-release & figlet to enable ASCII art
apt-get install lsb-release figlet -y

# create directory
mkdir -p /etc/update-motd.d/

# change to new directory
cd /etc/update-motd.d/

# copy files into place
cp "$script_path"/motd/* /etc/update-motd.d/

# make files executable
chmod +x /etc/update-motd.d/*

# remove MOTD file
rm /etc/motd

# symlink dynamic MOTD file
ln -s /var/run/motd /etc/motd
