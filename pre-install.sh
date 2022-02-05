#!/bin/bash

# Prebuild - root 


# https://github.com/GuyWicks/anisble-playbook.git

# Installer
# curl -s https://raw.githubusercontent.com/GuyWicks/anisble-playbook/guy-prebuild/pre-install.sh | sh


if [[ $EUID != 0 ]]; then
    echo "Please run as root"
    exit
fi

# Update the instance
apt update && apt dist-install -y
apt install nginx 

# Allow HTTP/HTTP Inbound
sudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
#sudo iptables -A OUTPUT -p tcp -m multiport --dports 80,443 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -F


#python3 --version
echo Reboot