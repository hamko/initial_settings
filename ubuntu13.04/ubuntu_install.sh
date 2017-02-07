#!/bin/sh

cd ~
mkdir build; cd build 

sudo apt-get -y install apt-get
sudo apt-get -y install vim
sudo apt-get -y install git gitk 
sudo apt-get -y install subversion
sudo apt-get -y install valgrind
sudo apt-get -y install libboost-all-dev
sudo apt-get -y install gnuplot
sudo apt-get -y install minicom
sudo apt-get -y install cmake cmake-curses-gui
sudo apt-get -y install octave3.2 octave3.2-headers octave3.2-htmldoc 
sudo apt-get -y install rdesktop
sudo apt-get -y install liboctave-dev libtiff4-dev
sudo apt-get -y install ffmpeg
sudo apt-get -y install sshfs
sudo apt-get -y install screen

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get -y install google-chrome-stable


sudo aptitude -y install ssh
sudo /etc/init.d/ssh start

# for Lab
sudo apt-get -y install libcv-dev libhighgui-dev libcvaux-dev libavdevice-dev libavformat-dev libavfilter-dev libavcodec-dev libswscale-dev libavutil-dev libusb-dev freeglut3-dev libboost-all-dev octave3.2 octave3.2-headers libusb-1.0-0-dev libgtk2.0-dev

# Drawing softs
sudo apt-get -y install inkscape
sudo apt-get -y install gimp

# sshfs
if [ -e ~/Dropbox/setting/bin/set_sshfs.sh ]; then
    ~/Dropbox/setting/bin/set_sshfs.sh
fi

##Chrome 
sudo apt-get install google-chrome-stable

# eigen, qt, glew, yaml, zlib, libjpeg, libode, libpng
sudo apt-get -y install build-essential cmake-curses-gui libboost-all-dev libeigen3-dev libeigen3-doc libqt4-dev libqt4-opengl-dev qt4-dev-tools qt4-qtconfig qt4-doc-html libglew1.6-dev libyaml-dev gettext zlib1g-dev libjpeg62-dev libpng12-dev libode-dev libomniorb4-dev libcos4-dev omniidl omniorb-nameserver libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev libsndfile1-dev uuid-dev

####CPPUNIT
sudo apt-get -y install libcppunit-1.12-1 libcppunit-dev libcppunit-doc libcppunit-subunit-dev libcppunit-subunit0 libqxcppunit-dev libqxcppunitd1

####PCL
sudo add-apt-repository -y ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get -y update
sudo apt-get -y install libpcl-all

####ROS installできなくなってる
##Catkin workspace

#Dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update && sudo apt-get install nautilus-dropbox

####OpenGL
#Couldn't find any package whose name or description matched "libglut3-dev"
sudo apt-get -y install freeglut3-dev freeglut3-dbg  libglut3-dev libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev build-essential

##OpenCV
#./opencv_installer.sh

##inkscape
sudo apt-get -y install inkscape

#for vm
sudo apt-get -y install build-essential linux-headers-$(uname -r) open-vm-dkms
sudo ln -s /usr/src/linux-headers-$(uname -r)/include/generated/uapi/linux/version.h /usr/src/linux-headers-$(uname -r)/include/linux/version.h
sudo insmod /lib/modules/3.8.0-19-generic/misc/vmmon.ko
sudo vmware-modconfig --console --install-all
sudo service vmware start

#recordmydesktop
sudo apt-get -y install mencoder

#mozc
sudo apt-get -y install ibus-mozc
killall ibus-daemon && ibus-daemon -d -x

# gmediafinder
sudo apt-add-repository ppa:s-lagui/ppa
sudo apt-get update
sudo apt-get -y install gmediafinder

#acroread
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get -y install acroread

# youtube-dl
sudo apt-get -y install youtube-dl

