#!/bin/sh

cp ~/git/initial_settings/ubuntu14.04/vimrc ~/.vimrc
cp ~/git/initial_settings/ubuntu14.04/bashrc ~/.bashrc

sudo apt-get -y install aptitude
sudo aptitude -y install vim
sudo aptitude -y install git gitk 

cd ~
mkdir git
cd git
git clone https://github.com/hamko/setting
git clone https://github.com/hamko/topcoder
git clone https://github.com/hamko/Kampani
git clone https://github.com/hamko/sample
git clone https://github.com/hamko/stocks
git clone https://github.com/hamko/libhamkoutil
git clone https://github.com/hamko/contest
git clone https://github.com/hamko/cppode

sudo aptitude -y install subversion valgrind libboost-all-dev gnuplot minicom cmake cmake-curses-gui octave3.2 octave3.2-headers octave3.2-htmldoc rdesktop liboctave-dev libtiff4-dev ffmpeg sshfs screen

# for Lab
 sudo aptitude -y install libcv-dev libhighgui-dev libcvaux-dev libavdevice-dev libavformat-dev libavfilter-dev libavcodec-dev libswscale-dev libavutil-dev libusb-dev freeglut3-dev libboost-all-dev octave3.2 octave3.2-headers libusb-1.0-0-dev libgtk2.0-dev

# Drawing softs
sudo aptitude -y install inkscape gimp

# eigen, qt, glew, yaml, zlib, libjpeg, libode, libpng
sudo aptitude -y install build-essential cmake-curses-gui libboost-all-dev libeigen3-dev libeigen3-doc libqt4-dev libqt4-opengl-dev qt4-dev-tools qt4-qtconfig qt4-doc-html libglew1.6-dev libyaml-dev gettext zlib1g-dev libjpeg62-dev libpng12-dev libode-dev libomniorb4-dev libcos4-dev omniidl omniorb-nameserver libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev libsndfile1-dev uuid-dev

####CPPUNIT
sudo aptitude -y install libcppunit-1.12-1 libcppunit-dev libcppunit-doc libcppunit-subunit-dev libcppunit-subunit0 libqxcppunit-dev libqxcppunitd1 

####OpenGL
#Couldn't find any package whose name or description matched "libglut3-dev"
sudo aptitude -y install freeglut3-dev freeglut3-dbg  libglut3-dev libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev build-essential

#mozc
sudo aptitude -y install ibus-mozc
killall ibus-daemon && ibus-daemon -d -x

# Java
sudo aptitude -y install icedtea-netx

#TBB
sudo aptitude install -y libtbb-dev



exit




cd ~
mkdir build; cd build 

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

##OpenCV
./opencv_installer.sh

##inkscape
sudo aptitude -y install inkscape

#for vm
sudo aptitude -y install build-essential linux-headers-$(uname -r) open-vm-dkms
sudo ln -s /usr/src/linux-headers-$(uname -r)/include/generated/uapi/linux/version.h /usr/src/linux-headers-$(uname -r)/include/linux/version.h
sudo insmod /lib/modules/3.8.0-19-generic/misc/vmmon.ko
sudo vmware-modconfig --console --install-all
sudo service vmware start

#recordmydesktop
sudo aptitude -y install mencoder


# gmediafinder
sudo apt-add-repository ppa:s-lagui/ppa
sudo apt-get update
sudo apt-get -y install gmediafinder

#acroread
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo aptitude update
sudo aptitude -y install acroread
