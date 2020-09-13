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

sudo apt-get install \
    libnuma-dev cmake \
    libpython-dev python-numpy \
    qtbase5-dev libqt5svg5-dev libqt5opengl5-dev libqwt-qt5-dev \
    portaudio19-dev libjack-jackd2-dev \
    graphviz
    

#Python Bindings
sudo apt-get install -y python-dev swig

#core framework and toolkits (required)
echo -e "\n\n${ITEM}core framework and toolkits (required)${WHITE}\n\n"
sudo add-apt-repository -y ppa:pothosware/framework

#support libraries for pothos (required)
echo -e "\n\n${ITEM}support libraries for pothos (required)${WHITE}\n\n"
sudo add-apt-repository -y ppa:pothosware/support

#supplies soapysdr, and drivers (required)
echo -e "\n\n${ITEM}supplies soapysdr, and drivers (required)${WHITE}\n\n"
sudo add-apt-repository -y ppa:myriadrf/drivers

#needed when using bladerf devices
echo -e "\n\n${ITEM}needed when using bladerf devices${WHITE}\n\n"
sudo add-apt-repository -y ppa:bladerf/bladerf

#needed when using usrp devices
sudo add-apt-repository -y ppa:ettusresearch/uhd

#always update after adding PPAs
sudo apt-get update

###
##Installing Pothos and toolkits
echo -e "\n\n${ITEM}Installing Pothos and toolkits${WHITE}\n\n"
sudo apt-get install -y pothos-all

#install bindings for python2
#echo -e "\n\n${ITEM}install bindings for python2${WHITE}\n\n"
#sudo apt-get install python-pothos

#install bindings for python3
echo -e "\n\n${ITEM}bindings for python3${WHITE}\n\n"
sudo apt-get install -y python3-pothos

#install development files for python blocks
echo -e "\n\n${ITEM}install development files for python blocks${WHITE}\n\n"
sudo apt-get install -y pothos-python-dev

###
#SDR Hardware packages

#osmo sdr support:
echo -e "\n\n${ITEM}osmo sdr support${WHITE}\n\n"
sudo apt-get install -y osmo-sdr soapysdr-module-osmosdr

#rtl sdr support:
echo -e "\n\n${ITEM}rtl sdr support${WHITE}\n\n"
sudo apt-get install -y rtl-sdr soapysdr-module-rtlsdr

#blade rf support:
echo -e "\n\n${ITEM}blade rf support${WHITE}\n\n"
sudo apt-get install -y bladerf soapysdr-module-bladerf

#hack rf support:
echo -e "\n\n${ITEM}hack rf support${WHITE}\n\n"
sudo apt-get install -y hackrf soapysdr-module-hackrf

#usrp support:
echo -e "\n\n${ITEM}usrp support${WHITE}\n\n"
sudo apt-get install -y uhd-host uhd-soapysdr soapysdr-module-uhd

#miri SDR support:
echo -e "\n\n${ITEM}miri sdr support${WHITE}\n\n"
sudo apt-get install -y miri-sdr soapysdr-module-mirisdr

#rf space support:
echo -e "\n\n${ITEM}rf space support${WHITE}\n\n"
sudo apt-get install -y soapysdr-module-rfspace

#airspy support:
echo -e "\n\n${ITEM}airspy support${WHITE}\n\n"
sudo apt-get install -y airspy soapysdr-module-airspy

sudo add-apt-repository -y ppa:pothosware/support
sudo add-apt-repository -y ppa:pothosware/framework
sudo apt-get update
sudo apt-get install \
    libpoco-dev \
    libspuce-dev \
    nlohmann-json-dev \ #nlohmann-json3-dev on 20.04 lts
    libmuparserx-dev

#pre-packaged Soapy SDR development files
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo apt-get update
sudo apt-get install libsoapysdr-dev

#print information about the install
PothosUtil --system-info
SoapySDRUtil --info

#Install Tools
sudo apt-get install -y soapysdr-tools

echo -e "${HEADER}Finished installing SoapySDR${WHITE}"



