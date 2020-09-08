#!/usr/sh

##########################################
##	    install anaconda3		 ##
##########################################
## Author: deleomike                    ##
## Email: michaeldeleo31@yahoo.com	 ##
##########################################

#For Ubuntu 20.04

echo "Installing Anaconda 3"

#Supporting Libraries
sudo apt install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

wget -P /tmp https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh

sha256sum /tmp/Anaconda3-2020.02-Linux-x86_64.sh
