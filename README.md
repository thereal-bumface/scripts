## TO DOWNLOAD THIS REPO FROM PUTTY LINUX SERVER:

# Navigates to root directory, downloads the zip file from my github, installs unzip if not installed, unzips the main.zip, navigates to root directory, navigates to scripts-main, makes start.sh executable, and executes start.sh
```` 
cd / && wget https://github.com/thereal-bumface/scripts/archive/refs/heads/main.zip && apt install unzip && unzip main.zip && cd / && cd scripts-main && sudo chmod +x start.sh && ./start.sh
```` 

## After the Scripts Finish
After these scripts finish running, you should be all set up with your server. Type 'screen -S tf2' to start a screen session. Type 'screen -list' to view all screen sessions. Type 'screen -r tf2' to connect to your session. Type './tf.sh' to start your server. Press 'ctrl+a' then 'd' to exit your screen without killing it. If you ever want to access your screen, just open putty (which should automatically open with user 'tfds' if you followed the slide deck). Then, type 'screen -r' to reconnect to your screen. You can then type 'status' into the console to see players on the server, and execute other server commands. If you want to exit putty without killing the session, remember to type 'ctrl+a' and 'd' to exit, then close putty.