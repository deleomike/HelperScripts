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
sudo apt-get install -y linux-headers-$(uname -r)

echo "blacklist nouveau
options nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nvidia-nouveau.conf

sudo update-initramfs -u

wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda_10.2.89_440.33.01_linux.run

mkdir ~/tmp
sudo bash cuda_10.2.89_440.33.01_linux.run --tmpdir=~/tmp --silent --driver --toolkit --samples

echo export PATH="/usr/local/cuda-10.2/bin:$PATH" >> ~/.bashrc
echo export LD_LIBRARY_PATH="/usr/local/cuda-10.2/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc

echo "CUDA 10.2 Installed"

