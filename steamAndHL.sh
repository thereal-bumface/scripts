#!/usr/bin/bash
echo "===================BEGIN steamAndHL.sh==================="
cd /									# Navigate to root directory
sudo mkdir /hlserver					# Create directory "/hlserver"
sudo chmod 775 /hlserver				# Change read/write permissions on "/hlserver"
sudo chown tfds /hlserver				# Give permissions over "/hlserver" to "tfds"
cd /hlserver							# Navigate into the "/hlserver" directory

sudo dpkg --add-architecture i386		# Add necessary packages
sudo apt-get update						# Update packages
sudo apt-get -y install lib32z1 libncurses5:i386 libbz2-1.0:i386 libgcc-s1 lib32stdc++6 libtinfo5:i386 libcurl3-gnutls:i386	# Install necessary packages
sudo add-apt-repository multiverse -y	# Required for Steam
sudo apt-get update						# Update packages
sudo apt-get --with-new-pkgs upgrade -y	# Upgrade packages

curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -		# Install steamCMD
echo -e "login anonymous\nforce_install_dir /hlserver/tf2\napp_update 232250\nquit" > tf2_ds.txt 	# Create "tf2_ds.txt"
echo -e "./steamcmd.sh +runscript tf2_ds.txt" > update.sh  											# Create "update.sh"
sudo chmod +x update.sh   																			# Make "update.sh" executable
./update.sh   																						# Execute "update.sh"
echo "===================END steamAndHL.sh==================="
cd /									# Navigate to root directory
cd scripts-main							# Navigate to "/scripts-main"
sudo chmod +x makeAndRunTF.sh   		# Make "makeAndRunTF.sh" executable
sed -i -e 's/\r$//' makeAndRunTF.sh
./makeAndRunTF.sh   					# Execute "makeAndRunTF.sh"