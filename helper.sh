#!/usr/bin


GREEN='\033[0;32m'
WHITE='\033[1;37m'

echo -e "${GREEN}Helper Script: ^_^ Hello World!${WHITE}"

sudo apt-get install ca-certificates -y

sudo apt-get update -y

sudo snap install pycharm-community --classic

sudo snap install blender --classic

sudo add-apt-repository multiverse
sudo apt update -y

sudo apt install -y steam

DIR_PATH=pwd

#Conda
bash ./scripts/installConda.sh

#Unity
bash ./scripts/installUnity.sh

#SoapSDR
bash ./scripts/installSoapy.sh

#Cuda 10.2
bash ./scripts/installCuda102.sh
