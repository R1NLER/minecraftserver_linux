#!/bin/bash
#This script is for a Magma Server for Minecraft 1.12.2 ONLY WORKS with java 8
echo "Select your operating system (debian/ubuntu)"
read os
if [ "$os" = "debian" ]
then
    echo "deb http://deb.debian.org/debian/ sid main" >> /etc/apt/sources.list 
    sudo apt update && sudo apt install openjdk-8-jre -y
    sudo apt install wget
 
else 
    sudo apt update && sudo apt install openjdk-8-jre -y
    sudo apt install wget

fi

echo "Select the name for your server directory"
read serverfolder
mkdir $serverfolder
cd $serverfolder
echo "Downloading Magma"
sleep 1s
echo "."
sleep 1s
echo ".."
sleep 1s
echo "..."
wget https://git.magmafoundation.org/api/v4/projects/7/packages/maven/org/magmafoundation/Magma/1.12.2-d8f2eae9/Magma-1.12.2-d8f2eae9.jar
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2860/forge-1.12.2-14.23.5.2860-installer.jar
echo "Downloaded Magma successfully"
sleep 1s
echo "."
sleep 1s
echo ".."
sleep 1s
echo "..."
echo -e "Starting Server"
sleep 1s
echo "."
sleep 1s
echo ".."
sleep 1s
echo "..."
echo -e "Do you want to add RAM memory to your server? (y/n) default:512M"
read ramcheck
if [ "$ramcheck" = "y" ]
then
    echo "Write the amount of minimum RAM (only numbers)"
    read ram1
    echo "Write the amount of maximum RAM (only numbers)"
    read ram2
    java -Xms"$ram1"M -Xmx"$ram2"M -jar Magma-1.12.2-d8f2eae9.jar nogui  
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    #sed -i 's/eula=false/eula=true/' eula.txt #EULA TRUE
    echo -e "Installing Forge"
    sleep 1s
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
    echo -e "Installed Forge"
    sleep 1s
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    echo "Starting your Minecraft Magma Server"
    sleep 1s
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    java -Xms"$ram1"M -Xmx"$ram2"M -jar forge-1.12.2-14.23.5.2860.jar nogui
 
else 
    java -Xms1024M -Xmx1024M -jar Magma-1.12.2-d8f2eae9.jar nogui
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    #sed -i 's/eula=false/eula=true/' eula.txt #EULA TRUE
    echo -e "Installing Forge"
    sleep 1s
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
    echo -e "Installed Forge"
    sleep 1s
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    echo "Starting your Minecraft Magma Server"
    sleep 1s
    echo "."
    sleep 1s
    echo ".."
    sleep 1s
    echo "..."
    java -Xms512M -Xmx512M -jar Magma-1.12.2-d8f2eae9.jar nogui

fi
