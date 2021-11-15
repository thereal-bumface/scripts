#!/usr/bin/bash
echo "==========================================="
echo "begin makeAndRunTF.sh"
cd /hlserver
echo -e "#!/bin/sh\ntf2/srcds_run -console -game tf -timeout 0 -autoupdate -steam_dir /hlserver -steamcmd_script /hlserver/tf2_ds.txt +maxplayers 24 +map ctf_2fort +sv_pure 0" > tf.sh
sudo chmod +x tf.sh

# ./tf.sh

# RUN THIS MANUALLY
# Open Team Fortress 2 on your client computer and enter the console command connect x (replace x with Droplet's IP)
# Verify that you successfully loaded into the map you specified in tf.sh
# Press Ctrl + C in PuTTY to terminate the game server session

echo "end makeAndRunTF.sh"
echo "==========================================="

cd /
sudo chmod +x additionalSetup.sh
./additionalSetup.sh