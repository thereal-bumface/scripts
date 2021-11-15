#!/usr/bin/bash
echo "===================BEGIN additionalSetup.sh==================="
sudo ufw allow 22 					# Allow SSH on TCP port 22
sudo ufw allow 80 					# Allow connections on unencrypted port 80
sudo ufw allow 27015   				# Allow connections through port 27015 (Source servers)
sudo ufw enable 					# Enable settings
echo "===================END additionalSetup.sh==================="

cd /								# Navigate to root directory
cd scripts-main						# Navigate to "/scripts-main"
sudo chmod +x localHostMaps.sh  	# Make "localHostMaps.sh" executable
./localHostMaps.sh  				# Execute "localHostMaps.sh"