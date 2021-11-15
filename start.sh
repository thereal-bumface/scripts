#!/usr/bin/bash
echo "==========================================="
echo "begin start"
sudo rm -rf main.zip
sudo mv scripts/* .
sudo rm -rf scripts
echo "end start"
echo "==========================================="

cd /
sudo chmod +x makeUser.sh
./makeUser.sh