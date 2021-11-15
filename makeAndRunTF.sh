#!/usr/bin/bash
echo "===================BEGIN makeAndRunTF.sh==================="
cd /								# Navigate to root directory
cd /hlserver						# Navigate to "/hlserver"
echo -e "#!/bin/sh\ntf2/srcds_run -console -game tf -timeout 0 -autoupdate -steam_dir /hlserver -steamcmd_script /hlserver/tf2_ds.txt +maxplayers 24 +map ctf_2fort +sv_pure 0" > tf.sh  	# Create "tf.sh"
sudo chmod +x tf.sh 				# Make "tf.sh" executable
echo "===================END makeAndRunTF.sh==================="
cd /								# Navigate to root directory
cd scripts-main						# Navigate to "/scripts-main"
sudo chmod +x additionalSetup.sh    # Make "additionalSetup.sh" executable
./additionalSetup.sh   				# Execute "additionalSetup.sh"