#!/bin/bash

sed --in-place s/us/fr/g /etc/default/keyboard
apt-get update
apt-get install -y nginx openssh-server nodejs
sudo su
mv /var/www/html/index.nginx-debian.html /var/www/html/index.html
echo "<!DOCTYPE html> <html> <body> B3 Devops - TP 1 </body> </html> " > /var/www/html/index.html
reboot
