#!/usr/bin

##########################################
##	    install LimeSuite		 ##
##########################################
## Author: deleomike                    ##
## Email: michaeldeleo31@yahoo.com	 ##
##########################################

#SOURCE : https://github.com/pothosware/PothosCore/wiki/Ubuntu

#For Ubuntu 18

HEADER='\033[0;32m'
ITEM='\033[0;32m'
WHITE='\033[1;37m'

echo -e "\n\n${HEADER}Installing LimeSuite via Installer${WHITE}\n\n"

sudo add-apt-repository -y ppa:myriadrf/drivers
sudo apt-get update
sudo apt-get install -y limesuite liblimesuite-dev limesuite-udev limesuite-images
sudo apt-get install -y soapysdr-tools soapysdr-module-lms7

#soapysdr-tools use to be called just soapysdr on older packages
sudo apt-get install -y soapysdr soapysdr-module-lms7

echo -e "${HEADER}Finished installing LimeSuite${WHITE}"



