#!/usr/bin

INSTALLER=1

if [INSTALLER == 0] then
	#Manual install, not always the best because it does not leave an uninstaller
	wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin

	sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600

	sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

	sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"

	sudo apt-get update -y

	sudo apt-get -y install cuda
else
	#Installer route
	wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda_10.2.89_440.33.01_linux.run
	sudo sh cuda_10.2.89_440.33.01_linux.run
	
fi
