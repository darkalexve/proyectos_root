#!/bin/bash

#Script de Post install
#Make By Jonathan Melendez
#Compiled: 09/08/2015
#Updated: 

echo > /etc/apt/sources.list

echo "#Repositorios Jmelendez" >> /etc/apt/sources.list
echo "deb http://debian.cantv.net/debian/ stable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://debian.cantv.net/debian/ stable main contrib non-free" >> /etc/apt/sources.list
echo "deb http://debian.velug.org.ve/debian/ stable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://debian.velug.org.ve/debian/ stable main contrib non-free" >> /etc/apt/sources.list

echo "deb http://www.deb-multimedia.org jessie main non-free" >> /etc/apt/sources.list

apt-get update -y
apt-get install -y deb-multimedia-keyring
apt-get update -y
aptitude upgrade -y

apt-get install -y linux-headers-$(uname -r) build-essential checkinstall make automake cmake autoconf git git-core

apt-get install -y firmware-linux-nonfree synaptic

dpkg --add-architecture i386 && apt-get update -y

apt-get install -y libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386

apt-get install -y libdvdcss2

apt-get install -y faad gstreamer0.10-ffmpeg gstreamer0.10-x gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-base gstreamer0.10-plugins-good gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly ffmpeg lame twolame vorbis-tools libquicktime2 libfaac0 libmp3lame0 libxine2-all-plugins libdvdread4 libdvdnav4 libmad0 sox libxvidcore4 libstdc++5

apt-get install -y libgstreamer-perl libgstreamer-interfaces-perl

apt-get install -y w64codecs

apt-get install -y flashplugin-nonfree ssh

aptitude install -y openjdk-7-jre icedtea-7-plugin

apt-get install -y file-roller p7zip-full p7zip-rar rar unrar zip unzip unace bzip2 arj lha lzip 

apt-get install -y ttf-freefont ttf-mscorefonts-installer ttf-bitstream-vera ttf-dejavu ttf-liberation

apt-get install -y gnome-tweak-tool

echo "Instalando Chrome..."
dpkg -i chrome.deb && apt-get -f install
