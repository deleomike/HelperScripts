#!/bin/sh


GREEN='\033[0;32m'
WHITE='\033[1;37m'

echo -e "${GREEN}Helper Script: ^_^ Hello World!${WHITE}"

# Usage info
show_help() {
cat << EOF
Usage: ${0##*/} [-hacbsm] ...
Helper is a script to handle some common installations.
 
	-h          display this help and exit
	-a          install everything
	-b          install base software
			Pycharm-Community Classic Edition
			Steam
			Blender
	-s          install SDR libraries
	-c          install cuda 10.2 drivers, toolkit and samples
	-m          install miscellaneous packages
			Unreal Engine
EOF
}
 

echo -e "${GREEN}Creating Build Directory at ~/Builds for built projects${WHITE}"
mkdir ~/Builds

echo "These are system builds - HelperScript" > ~/Builds/readme.md

OPTIND=1
# Resetting OPTIND is necessary if getopts was used previously in the script.
# It is a good idea to make OPTIND local if you process options in a function.

while getopts hvf: opt; do
    case $opt in
        h)
		show_help
		exit 0
		;;
	a)

		#Baseline Software
		bash ./installers/base.sh

		#Conda
		bash ./installers/conda.sh

		#Get the profile again
		source ~/.bashrc

		#SoapSDR
		bash ./builders/soapy_sdr.sh

		#LimeSuite
		bash ./installers/lime_suite.sh

		#Unreal Engine
		bash ./builders/unreal_engine.sh

		#Cuda 10.2
		bash ./installers/cuda102.sh

		exit 0
		;;
	b)
		#Baseline Software
		bash ./installers/base.sh
		;;
	s)
		#SoapSDR
		bash ./builders/soapy_sdr.sh

		#LimeSuite
		bash ./installers/lime_suite.sh

		;;
	c)
		#Cuda 10.2
		bash ./installers/cuda102.sh
		;;
	m)
		#Unreal Engine
		bash ./builders/unreal_engine.sh
		;;
        *)
            show_help >&2
            exit 1
            ;;
    esac
done
shift "$((OPTIND-1))"   # Discard the options and sentinel --


