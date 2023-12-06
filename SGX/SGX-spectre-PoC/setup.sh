#!/bin/bash
# Ubuntu 20.04
# Install script to set up SGX environment for spectre attack found at https://github.com/lsds/spectre-attack-sgx

sudo apt-get install -y \
    build-essential \
    python-is-python3 \
    vim \

cd ~/Downloads
wget https://download.01.org/intel-sgx/sgx-linux/2.14/distro/ubuntu20.04-server/sgx_linux_x64_sdk_2.14.100.2.bin
chmod a+x sgx_linux_x64_sdk_2.14.100.2.bin

./sgx_linux_x64_sdk_2.14.100.2.bin --prefix /opt/intel

source /opt/intel/sgxsdk/environment

mkdir ~/testing-sgx && cd ~/testing-sgx
git clone https://github.com/lsds/spectre-attack-sgx && cd SGXSpectre



