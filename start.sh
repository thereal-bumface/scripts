#!/usr/bin/bash
echo "===================BEGIN start.sh==================="
cd / 				 				# Navigate to root directory
cd /scripts-main	 				# Navigate to "/scripts-main"
sudo rm -rf main.zip 				# Delete the downloaded zip file 
echo "===================END start.sh==================="
cd /								# Navigate to root directory
cd scripts-main						# Navigate to "/scripts-main"
sudo chmod +x makeUser.sh 			# Make "makeUser.sh" executable
./makeUser.sh						# Execute "makeUser.sh"