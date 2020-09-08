#!/usr/bin


GREEN='\033[0;32m'
WHITE='\033[1;37m'

echo -e "${GREEN}Helper Script: ^_^ Hello World!${WHITE}"

sudo apt-get update -y

sudo snap install -y pycharm-community --classic

sudo snap install -y blender --classic

sudo add-apt-repository multiverse
sudo apt update -y

sudo apt install -y steam

#Conda
bash ./scripts/installConda.sh

#Unity

#Cuda 10.2
bash ./scripts/installCuda102.sh
