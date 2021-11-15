#!/usr/bin/bash
echo "===================BEGIN makeUser.sh==================="
useradd tfds						# Create new user "tfds"
passwd -d tfds 						# Remove password from "tfds"
usermod -aG sudo tfds				# Give "tfds" admin rights
sudo usermod --shell /bin/bash tfds	# Set default shell to bash for "tfds"
cd /								# Navigate to root directory
sudo mkdir -p  /home/tfds			# Create "/home/tfds" directory if it doesn't already exist
sudo chown tfds /home/tfds			# Give "tfds" permissions to "/home/tfds"
sudo apt update						# Update packages
sudo apt-get upgrade -y				# Upgrade packages
echo "===================END makeUser.sh==================="
cd /								# Navigate to root directory
cd scripts-main						# Navigate to "/scripts-main"
sudo chmod +x steamAndHL.sh 		# Make "steamAndHL.sh" executable
sudo -u tfds ./steamAndHL.sh 		# Execute "steamAndHL.sh" (and subsequent scripts) as "tfds" for security