#!/bin/sh

sudo apt-get update && sudo apt-get install patchelf -y

CURRENT_PATH=`pwd`
cd ~
mkdir .pwninit && cd .pwninit
wget https://github.com/io12/pwninit/releases/download/3.3.0/pwninit
chmod +x pwninit
LINK_PATH=`pwd`
sudo ln -s $LINK_PATH/pwninit /usr/local/bin

cd $CURRENT_PATH
