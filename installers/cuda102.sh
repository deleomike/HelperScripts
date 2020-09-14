#!/usr/bin

echo "NVIDIA GPUS"
lspci | grep -i nvidia

echo "This install is for x86_64 Ubuntu 18. You have:"
uname -m && cat /etc/*release

echo "Installing GCC-7"
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test

sudo apt-get install -y gcc-7 g++-7

echo "Kernel Version"
uname -r

echo "Choose to install these headers"
sudo apt-get install linux-headers-$(uname -r)

sudo -s
echo "blacklist nouveau
options nouveau modeset=0" > /etc/modprobe.d/blacklist-nouveau.conf
exit

sudo update-initramfs -u

wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda_10.2.89_440.33.01_linux.run

sudo sh cuda_10.2.89_440.33.01_linux.run --silent --driver --toolkit --samples


