#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install python3-venv \
	python3-pip \
	libglib2.0-dev \
	libpixman-1-dev \
	flex \
	bison \
	-y \

pip install sphinx 

cd ~/Downloads/
git clone https://github.com/ninja-build/ninja.git && cd ninja
./configure.py --bootstrap
cp ninja /usr/bin/

cd ~/Downloads/
wget https://download.qemu.org/qemu-8.2.0-rc0.tar.xz
tar xvJf qemu-8.2.0-rc0.tar.xz
cd qemu-8.2.0-rc0
./configure
make -j 
