#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


##################################################################################
##Install Polybar Panel

#Install dependencies#
#sudo apt-get -y install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev
#sudo apt-get -y install libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev
#sudo apt-get -y install libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen
#sudo apt-get -y install xcb-proto libxcb-xrm-dev i3-wm libasound2-dev
#sudo apt-get -y install libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev

#Clone the source for Polybar#
#git clone https://github.com/jaagr/polybar.git

#Build#
#cd polybar && ./build.sh

# Online install #
apt install -y polybar
mkdir -p  /home/$username/.config/polybar
cp launch.sh /home/$username/.config/polybar/ && chmod +x launch.sh
cp /usr/share/doc/polybar/config /home/$username/.config/polybar/config.ini


