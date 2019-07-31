#!/bin/bash


echo "This is a Apache installation script" > /tmp/silly.txt


sudo apt-get update -y
sudo apt-get install -y apache2
sudo systemctl restart apache2
sudo apt-get install -y slapd ldap-utils
sudo dpkg-reconfigure slapd
sudo ufw allow ldap
ldapadd -x -D cn=admin,dc=clemson,dc=cloudlab,dc=us -W -f basedn.ldif
slappasswd
