#!/usr/bin/bash
echo "===================BEGIN cleanup.sh==================="
cd /								# Navigate to root directory
rm -rf scripts-main					# Delete scripts-main folder (and contents)
echo "===================END cleanup.sh==================="

echo "Enter Your Server IP Address: "
read serverIP
echo "Enter Your Server Name: "
read serverName
echo "Enter Your Steam ID (example: STEAM_0:1:123456789_): "
read steamID

