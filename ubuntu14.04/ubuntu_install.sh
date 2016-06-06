#!/bin/sh

sudo apt-get -y install aptitude
sudo aptitude -y install vim
sudo aptitude -y install git gitk 
git config --global user.email "wakataberyo@gmail.com"
git config --global user.name "Ryo Wakatabe"
git config --global push.default simple

cd ~
mkdir git
cd git
git clone https://github.com/hamko/setting
git clone https://github.com/hamko/initial_settings
git clone https://github.com/hamko/procon
git clone https://github.com/hamko/sample
git clone https://github.com/hamko/libhamkoutil

cp ~/git/initial_settings/ubuntu14.04/vimrc ~/.vimrc
cp ~/git/initial_settings/ubuntu14.04/bashrc ~/.bashrc

#mozc
sudo aptitude -y install ibus-mozc
killall ibus-daemon && ibus-daemon -d -x

# fundamentals
sudo aptitude -y install valgrind gnuplot minicom cmake 
sudo aptitude -y install libtiff4-dev ffmpeg sshfs screen xclip
sudo aptitude -y install subversion
sudo aptitude -y install rdesktop

# for Lab
sudo aptitude -y install libcv-dev libhighgui-dev libcvaux-dev libavdevice-dev libavformat-dev libavfilter-dev libavcodec-dev libswscale-dev libavutil-dev libusb-dev freeglut3-dev libusb-1.0-0-dev libgtk2.0-dev
sudo aptitude -y install cmake-curses-gui octave3.2 octave3.2-headers octave3.2-htmldoc liboctave-dev 

# Drawing softs
sudo aptitude -y install inkscape gimp

# eigen, qt, glew, yaml, zlib, libjpeg, libode, libpng
sudo aptitude -y install build-essential libeigen3-dev libeigen3-doc libqt4-dev libqt4-opengl-dev qt4-dev-tools qt4-qtconfig qt4-doc-html libglew1.6-dev libyaml-dev gettext zlib1g-dev libjpeg62-dev libpng12-dev libode-dev libomniorb4-dev libcos4-dev omniidl omniorb-nameserver libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev libsndfile1-dev uuid-dev

####CPPUNIT
sudo aptitude -y install libcppunit-1.12-1 libcppunit-dev libcppunit-doc libcppunit-subunit-dev libcppunit-subunit0 libqxcppunit-dev libqxcppunitd1 

####OpenGL
#Couldn't find any package whose name or description matched "libglut3-dev"
sudo aptitude -y install freeglut3-dev freeglut3-dbg  libglut3-dev libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev build-essential

# Java
sudo aptitude -y install icedtea-netx

#TBB
sudo aptitude install -y libtbb-dev

####PCL
sudo aptitude -y install libpcl1-dev

#recordmydesktop
sudo aptitude -y install mencoder

exit


# OpenCV
# ROS
