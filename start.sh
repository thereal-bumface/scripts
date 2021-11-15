#!/usr/bin/bash
echo "==========================================="
echo "begin start"
cd /
sudo rm -rf main.zip
sudo mv scripts-main/* .
sudo rm -rf scripts-main
echo "end start"
echo "==========================================="

cd /
sudo chmod +x makeUser.sh
./makeUser.sh