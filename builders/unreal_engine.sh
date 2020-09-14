#!/usr/bin

##########################################
##	    build unreal		 ##
##########################################
## Author: deleomike                    ##
## Email: michaeldeleo31@yahoo.com	 ##
##########################################

#SAUCE : https://github.com/pothosware/PothosCore/wiki/Ubuntu

#For Ubuntu 18

HEADER='\033[0;32m'
ITEM='\033[0;32m'
WHITE='\033[1;37m'

echo -e "\n\n${HEADER}Building Unreal Engine 4.24${WHITE}\n\n"

git clone -b 4.24 https://github.com/EpicGames/UnrealEngine.git ~/Builds/UnrealEngine

cd ~/Builds/UnrealEngine
./Setup.sh
./GenerateProjectFiles.sh
make

echo -e "${HEADER}Finished Building Unreal Engine 4.24${WHITE}"



