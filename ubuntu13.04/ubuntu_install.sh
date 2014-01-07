#!/bin/sh

cd ~
mkdir build; cd build 

sudo apt-get -y install aptitude
sudo aptitude -y install git gitk 
sudo aptitude -y install subversion
sudo aptitude -y install valgrind
sudo aptitude -y install libboost-all-dev
sudo aptitude -y install gnuplot
sudo aptitude -y install minicom
sudo aptitude -y install cmake cmake-curses-gui
sudo aptitude -y install octave3.2 octave3.2-headers octave3.2-htmldoc 
sudo aptitude -y install rdesktop
sudo aptitude -y install liboctave-dev libtiff4-dev
sudo aptitude -y install ffmpeg
sudo aptitude -y install sshfs

# for Lab
sudo aptitude -y install libcv-dev libhighgui-dev libcvaux-dev libavdevice-dev libavformat-dev libavfilter-dev libavcodec-dev libswscale-dev libavutil-dev libusb-dev freeglut3-dev libboost-all-dev octave3.2 octave3.2-headers libusb-1.0-0-dev libgtk2.0-dev

# Drawing softs
sudo aptitude -y install inkscape
sudo aptitude -y install gimp

# sshfs
if [ -e ~/Dropbox/setting/bin/set_sshfs.sh ]; then
    ~/Dropbox/setting/bin/set_sshfs.sh
fi

##Chrome (aptitudeじゃダメなん？)
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
sudo aptitude update
sudo aptitude -y install google-chrome-beta

# eigen, qt, glew, yaml, zlib, libjpeg, libode, libpng
sudo aptitude -y install build-essential cmake-curses-gui libboost-all-dev libeigen3-dev libeigen3-doc libqt4-dev libqt4-opengl-dev qt4-dev-tools qt4-qtconfig qt4-doc-html libglew1.6-dev libyaml-dev gettext zlib1g-dev libjpeg62-dev libpng12-dev libode-dev libomniorb4-dev libcos4-dev omniidl omniorb-nameserver libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev libsndfile1-dev uuid-dev

####CPPUNIT
sudo aptitude -y install libcppunit-1.12-1 libcppunit-dev libcppunit-doc libcppunit-subunit-dev libcppunit-subunit0 libqxcppunit-dev libqxcppunitd1

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
sudo aptitude -y install freeglut3-dev freeglut3-dbg  libglut3-dev libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev build-essential

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

#mozc
sudo aptitude -y install ibus-mozc
killall ibus-daemon && ibus-daemon -d -x

# gmediafinder
sudo apt-add-repository ppa:s-lagui/ppa
sudo apt-get update
sudo apt-get -y install gmediafinder

#acroread
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo aptitude update
sudo aptitude -y install acroread

# youtube-dl
sudo apt-get -y install youtube-dl

# topcoder
cp -r topcoder ~
