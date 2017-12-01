#!/bin/sh
#---
# Install script for MakeMKV on Ubuntu 16.04
# Originally written by Alexander Ganahl
#---
sudo apt-get update
sudo apt-get upgrade -y

# Install dependencies
sudo apt-get install wget less build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev libqt4-dev -y

# Download & unpack MakeMKV
cd ~/
wget http://www.makemkv.com/download/makemkv-bin-1.10.8.tar.gz
wget http://www.makemkv.com/download/makemkv-oss-1.10.8.tar.gz
tar -xvf makemkv-bin-1.10.8.tar.gz
tar -xvf makemkv-oss-1.10.8.tar.gz

# Install MakeMKV
cd makemkv-oss-1.10.8/
./configure
make
sudo make install

cd ../makemkv-bin-1.10.8/
make
sudo make install
