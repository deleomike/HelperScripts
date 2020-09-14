#!/usr/bin

##########################################
##	    install LimeSuite		 ##
##########################################
## Author: deleomike                    ##
## Email: michaeldeleo31@yahoo.com	 ##
##########################################

#SAUCE : https://github.com/pothosware/PothosCore/wiki/Ubuntu

#For Ubuntu 18

HEADER='\033[0;32m'
ITEM='\033[0;32m'
WHITE='\033[1;37m'

echo -e "\n\n${HEADER}Installing LimeSuite${WHITE}\n\n"

#packages for soapysdr available at myriadrf PPA
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo apt-get update

#install core library and build dependencies
sudo apt-get install -y git g++ cmake libsqlite3-dev

#install hardware support dependencies
sudo apt-get install -y libsoapysdr-dev libi2c-dev libusb-1.0-0-dev

#install graphics dependencies
sudo apt-get install -y libwxgtk3.0-dev freeglut3-dev

git clone https://github.com/myriadrf/LimeSuite.git
cd LimeSuite
git checkout stable
mkdir builddir && cd builddir
cmake ../
make -j4
sudo make install
sudo ldconfig

cd udev-rules
sudo ./install.sh

echo -e "${HEADER}Finished installing LimeSuite${WHITE}"



