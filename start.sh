#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

sudo docker compose up --build -d
sleep 5s
sudo chmod 777 -R ./jupyterLabData
