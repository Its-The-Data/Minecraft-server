#!/bin/bash

echo "Downloading Minecraft server..."
wget https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/416/downloads/paper-1.20.4-416.jar -O server.jar

echo "Accepting EULA..."
echo "eula=true" > eula.txt

echo "Starting server..."
java -Xms1G -Xmx2G -jar server.jar nogui
