#!/usr/bin

##########################################
##	    install anaconda3		 ##
##########################################
## Author: deleomike                    ##
## Email: michaeldeleo31@yahoo.com	 ##
##########################################

#For Ubuntu 20.04

GREEN='\033[0;32m'
WHITE='\033[1;37m'

echo -e "\n\n${GREEN}Installing Anaconda 3${WHITE}\n\n"

#Supporting Libraries
sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 expect

if test -f "/tmp/Anaconda3-2020.02-Linux-x86_64.sh"; then
	rm /tmp/Anaconda3-2020.02-Linux-x86_64.sh
	echo -e "\n${GREEN}Using Existing Conda Download${WHITE}\n"
else
	#Download anaconda
	wget -P /tmp https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
fi

#TODO: checksum check
sha256sum /tmp/Anaconda3-2020.02-Linux-x86_64.sh > /tmp/condaChecksum.txt

chmod +x /tmp/Anaconda3-2020.02-Linux-x86_64.sh

./scripts/setupConda.exp

source ~/.bashrc

conda update conda -y

echo -e "${GREEN}Finished installing Anaconda 3${WHITE}"



