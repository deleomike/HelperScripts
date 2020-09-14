#!/usr/bin

##########################################
##	    install SoapySDR		 ##
##########################################
## Author: deleomike                    ##
## Email: michaeldeleo31@yahoo.com	 ##
##########################################

#SOURCE : https://github.com/pothosware/PothosCore/wiki/Ubuntu

#For Ubuntu 18

HEADER='\033[0;32m'
ITEM='\033[0;32m'
WHITE='\033[1;37m'

echo -e "\n\n${HEADER}Installing SoapySDR${WHITE}\n\n"

echo "Installing GCC-7"
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test

sudo apt-get install -y gcc-7 g++-7

sudo apt-get install -y \
    libnuma-dev cmake \
    libpython-dev python-numpy \
    qtbase5-dev libqt5svg5-dev libqt5opengl5-dev libqwt-qt5-dev \
    portaudio19-dev libjack-jackd2-dev \
    graphviz
    

#Python Bindings
sudo apt-get install -y libpython-dev python-dev swig


sudo add-apt-repository -y ppa:pothosware/support
sudo add-apt-repository -y ppa:pothosware/framework
sudo apt-get update
sudo apt-get install -y \
    libpoco-dev \
    libspuce-dev \
    nlohmann-json-dev \ #nlohmann-json3-dev on 20.04 lts
    libmuparserx-dev

#pre-packaged Soapy SDR development files
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo apt-get update
sudo apt-get install -y libsoapysdr-dev


#Now to build it


git clone https://github.com/pothosware/SoapySDR.git
cd SoapySDR

cd SoapySDR
git pull origin master

mkdir build
cd build
cmake ..
make -j4
sudo make install
sudo ldconfig #needed on debian systems
SoapySDRUtil --info


#print information about the install
PothosUtil --system-info
SoapySDRUtil --info

#Install Tools
sudo apt-get install -y soapysdr-tools

echo -e "${HEADER}Finished installing SoapySDR${WHITE}"



