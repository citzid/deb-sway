#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
##################################################################################
##Install Dekstop Manager
apt-get -y install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
dpkg-reconfigure lightdm
cp .xinitrc /home/$username/

##################################################################################
##Install Berry Window Manager
#Install Dependencies#
apt-get -y install libx11-dev libxft-dev libxinerama-dev

#Online Install#
#git clone https://github.com/JLErvin/berry
#cd berry
#make
#sudo make install
#mkdir $username/.config/berry
#cp examples/sxhkdrc $username/.config/berry/sxhkdrc
#cp examples/autostart $username/.config/berry/autostart

#Offline Install berry wm#
dpkg -i pkg/berry_0.1.11-1_amd64_bullseye.deb

#setup
mkdir -p ~/.config
mkdir -p ~/.config/berry
cd home/$username
cp examples/* home/$username.config/berry/
cp berry.desktop ~/usr/share/xsessions
