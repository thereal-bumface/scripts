#!/usr/bin/bash
echo "==========================================="
echo "begin localHostMaps.sh"
sudo apt-get install apache2
sudo chmod 775 -R /var/www/html/
sudo chgrp -R tfds /var/www/html/
echo "end localHostMaps.sh"
echo "==========================================="