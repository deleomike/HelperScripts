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
bash ./installers/conda.sh

#Get the profile again
source ~/.bashrc

#SoapSDR
bash ./builders/soapy_sdr.sh

#LimeSuite
bash ./installers/lime_suite.sh

#Cuda 10.2
bash ./installers/cuda102.sh
