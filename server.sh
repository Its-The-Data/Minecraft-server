#!/bin/bash

echo "Downloading previous world if it exists..."

if [ -f world.zip ]; then
  unzip world.zip
fi

echo "Downloading Minecraft server..."
wget https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/416/downloads/paper-1.20.4-416.jar -O server.jar

echo "Accepting EULA..."
echo "eula=true" > eula.txt

echo "Starting server loop..."

while true
do
  java -Xms2G -Xmx4G -jar server.jar nogui
  echo "Server stopped. Restarting..."
  sleep 10
done
