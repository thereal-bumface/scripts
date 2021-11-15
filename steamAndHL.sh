#!/usr/bin/bash
echo "==========================================="
echo "BEGIN steamAndHL.sh"
sudo mkdir /hlserver
sudo chmod 775 /hlserver
sudo chown tfds /hlserver
cd /hlserver

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get -y install lib32z1 libncurses5:i386 libbz2-1.0:i386 libgcc-s1 lib32stdc++6 libtinfo5:i386 libcurl3-gnutls:i386
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar xvzf steamcmd_linux.tar.gz

echo -e "login anonymous\nforce_install_dir /hlserver/tf2\napp_update 232250\nquit" > tf2_ds.txt
echo -e "./steamcmd.sh +runscript tf2_ds.txt" > update.sh
sudo chmod +x steamcmd.sh update.sh
./update.sh
echo "END steamAndHL.sh"
echo "==========================================="

cd /
sudo chmod +x makeAndRunTF.sh
sed -i -e -y 's/\r$//' makeAndRunTF.sh
./makeAndRunTF.sh