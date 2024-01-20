#!bin/bash
sudo add-apt-repository multiverse ;
sudo dpkg --add-architecture i386 ;
sudo apt update ;
sudo apt upgrade -y ;
apt install steamcmd screen -y ;
steamcmd +login anonymous +app_update 2394010 validate +quit ;
ln -s ~/Steam/steamapps/common/PalServer/linux64/steamclient.so ~/.steam/sdk64/steamclient.so
cd ~/Steam/steamapps/common/PalServer ;
screen -dmS Palworld-Server ./PalServer.sh
