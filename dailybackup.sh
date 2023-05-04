# This script for your Minecraft server running on a screen named "minecraft", 
# alerts you 5 minutes before in the game chat and then creates a backup copy in the specified path. 
# After that, it restarts the server inside the same screen. Autorestart Script on my Github profile.
# https://github.com/R1NLER/minecraftserver_linux/
#!/bin/bash
screen -S minecraft -X stuff "say The server will restart in 5 minutes$(echo -ne '\015')"
sleep 240s
screen -S minecraft -X stuff "say The server will restart in 1 minute$(echo -ne '\015')"
sleep 50s
screen -S minecraft -X stuff "say The server will restart in 10 seconds$(echo -ne '\015')"
sleep 5s
screen -S minecraft -X stuff "say The server will restart in 5 seconds$(echo -ne '\015')"
sleep 1s
screen -S minecraft -X stuff "say The server will restart in 4 seconds$(echo -ne '\015')"
sleep 1s
screen -S minecraft -X stuff "say The server will restart in 3 seconds$(echo -ne '\015')"
sleep 1s
screen -S minecraft -X stuff "say The server will restart in 2 seconds$(echo -ne '\015')"
sleep 1s
screen -S minecraft -X stuff "say The server will restart in 1 second$(echo -ne '\015')"
sleep 1s
screen -S minecraft -X stuff "say Restarting...$(echo -ne '\015')"
sleep 1s
screen -S minecraft -X stuff "stop$(echo -ne '\015')"
sleep 10s
screen -S minecraft -X stuff $'\003'
cd /yourserverfolder
zip -r /your/backup/folder/backup_$(date +\%d_\%m_\%y).zip yourserverfolder
sleep 1s
screen -S minecraft -X stuff "./autorestart.sh$(echo -ne '\015')"
