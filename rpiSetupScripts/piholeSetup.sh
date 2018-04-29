#!/bin/bash

# setup log rotation
apt-get install -y logrotate
mv logrotate.conf /etc/logrotate.d/pihole

# install pihole
curl -L install.pi-hole.net | bash
