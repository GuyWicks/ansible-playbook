#!/bin/bash

if [[ $EUID != 0 ]]; then
    echo "Please run as root"
    exit
fi

snap install core
snap refresh core
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot

certbot certonly --nginx -n --agree-tos --email guy.wicks@gmail.com --domains test1.gwicksfamily.co.uk
