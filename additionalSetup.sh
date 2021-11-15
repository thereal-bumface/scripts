#!/usr/bin/bash
echo "==========================================="
echo "begin additionalSetup.sh"
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 27015
sudo ufw enable

echo "end additionalSetup.sh"
echo "==========================================="

cd /
sudo chmod +x localHostMaps.sh
./localHostMaps.sh