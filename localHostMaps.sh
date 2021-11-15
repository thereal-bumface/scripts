#!/usr/bin/bash
echo "===================BEGIN localHostMaps.sh==================="
sudo apt-get install apache2 		# Install apache2
sudo mkdir -p /var/www/html			# Make directory "/var/www/html" if it doesn't already exist
sudo chmod 775 -R /var/www/html/  	# Change read/write permissions on "/var/www/html"
sudo chgrp -R tfds /var/www/html/	# Change permissions for "tfds" on "/var/www/html" 
echo "===================END localHostMaps.sh==================="

cd /								# Navigate to root directory
cd scripts-main						# Navigate to "/scripts-main"
sudo chmod +x cleanup.sh   			# Make "cleanup.sh" executable
./cleanup.sh   						# Execute "cleanup.sh"