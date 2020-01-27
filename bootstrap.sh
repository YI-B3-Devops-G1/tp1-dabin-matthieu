#!/bin/bash

sed --in-place s/us/fr/g /etc/default/keyboard
apt-get update
apt-get install -y nginx openssh-server nodejs
rm /var/www/html/*
mv /tmp/index.html /var/www/html/index.html
reboot
