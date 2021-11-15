#!/usr/bin/bash
echo "===================BEGIN installBumMods.sh==================="
cd / 				 				# Navigate to root directory
wget https://github.com/thereal-bumface/modList/archive/refs/heads/main.zip 	# Download "main.zip"
unzip main.zip 						# Unzip "main.zip"
rm -rf main.zip  					# Delete "main.zip"
cd modList-main						# Navigate to "/modList-main"
unzip tf.unzip						# Unzip "tf.zip"
rm -rf tf.unzip						# Delete "tf.unzip"

rsync -av /modList-main/tf /hlserver/tf2	# Copy/merge tf folder that we just unzipped to "/hlserver/tf2" folder
cd /										# Navigate to root directory
rm -rf modList-main							# Delete "/modList-main"

echo "Enter Your Server Name: "				
read serverName								# User input serverName
echo "Enter Your Server IP Address: "
read serverIP								# User input serverIP
echo "Enter Your Message of the Day (motd): "
read motd 									# User input motd
echo "Enter Your Map Cycle: "
read mapcycle 								# User input mapcycle
echo "Enter Your Steam ID (example: STEAM_0:1:123456789_): "
read steamID  								# User input steamID

sudo sed -i 's/"YOUR HOST NAME HERE"/"$serverName"/' /hlserver/tf2/tf/cfg/server.cfg 	# write serverName to server.cfg
echo "Your Server Name is Now: $serverName"

sudo sed -i 's/"YOUR.IP.ADDRESS.HERE"/"$serverIP"/' /hlserver/tf2/tf/cfg/server.cfg  	# write serverIP to server.cfg
echo "Your Server IP for fastdl is Now: $serverIP"

truncate -s 0 /hlserver/tf2/tf/cfg/motd.txt												# Erase current motd.txt
echo -e "$motd" > /hlserver/tf2/tf/cfg/motd.txt											# Write "motd" to motd.txt
echo "Your MOTD is Now: $motd"

truncate -s 0 /hlserver/tf2/tf/cfg/mapcycle.txt											# Erase current mapcycle.txt
echo -e "$mapcycle" > /hlserver/tf2/tf/cfg/mapcycle.txt									# Write "mapcycle" to mapcycle.txt
echo "Your Map Cycle is Now: $mapcycle"

sudo sed -i 's/"Your Steam ID"/"$steamID"/' /hlserver/tf2/tf/addons/sourcemod/configs/admins_simple.ini  	# write steamID to admins_simple.ini
echo "Your Admin Priviliges have been applied to STEAM ID: $steamID"

echo "Want to start your server? (y/n): "
read shouldStart
if($shouldStart -eq "y" || $shouldStart -eq "Y")
then
	cd /							# Navigate to root directory
	cd hlserver						# Navigate to "/hlserver"
	screen -S tf2 -dm "./tf.sh"		# Start a screen session named "tf2", execute "tf.sh", and disconnect without ending the screen session
	echo "Open TF2 and type 'connect $serverIP' into your console to connect to your server. Cheers!"
else
	echo "If you want to start your server manually, navigate to the 'hlserver' folder, then type 'screen -S tf2' to start a screen, then type './tf.sh', then press 'ctrl+a', then 'd' to exit the screen. Open TF2 and type 'connect $serverIP' into your console to connect to your server. Cheers!"
fi
echo "===================END localHostMaps.sh==================="
cd /								# Navigate to root directory
cd scripts-main						# Navigate to "/scripts-main"
sudo chmod +x cleanup.sh   			# Make "cleanup.sh" executable
./cleanup.sh   						# Execute "cleanup.sh"

