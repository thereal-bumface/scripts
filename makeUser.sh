#!/usr/bin/bash
echo "==========================================="
echo "begin makeUser"
useradd tfds
passwd -d tfds 
usermod -aG sudo tfds
sudo usermod --shell /bin/bash tfds
sudo mkdir /home/tfds
sudo chown tfds /home/tfds
su - tfds
echo "end makeUser"
echo "==========================================="

cd /
sudo chmod +x steamAndHL.sh
./steamAndHL.sh