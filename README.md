TO DOWNLOAD THIS REPO FROM PUTTY LINUX SERVER:

cd /
wget https://github.com/thereal-bumface/scripts/archive/refs/heads/main.zip
apt install unzip
unzip main.zip
rm -rf main.zip
mv scripts/* .
rm -rf scripts

To run this sequence of scripts, run the following:

sudo chmod +x makeUser.sh && ./makeUser.sh

After these scripts finish running, you should be able to go to the next step.

Go to https://github.com/thereal-bumface/modList, download the tf.zip, extract, drag and drop in the /hlserver/tf2 folder, and update the server.cfg IP address and Host Name, and update the /tf/addons/sourcemod/configs/admins_simple.ini with 99:z tag with your steam ID.

Files to Drag and Drop
- Addons folder
- hlserver
	- tf2
		> tf
			> cfg
				- mapcycle.txt
				- motd.txt
				- server.cfg
			> addons
				> sourcemod
					> configs
						admins_simple.ini