#!/bin/sh

mkdir vpn && cd vpn
curl https://raw.githubusercontent.com/5ym/docker-vpn/main/docker-compose.yml > docker-compose.yml
echo 'customize compose file'
sleep 5
vim docker-compose.yml
docker compose up -d
sudo cp ipsec.d/*.p12 . && sudo chown $USER: *.p12 
