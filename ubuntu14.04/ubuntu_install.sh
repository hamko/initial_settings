#!/bin/sh

sudo apt-get -y install vim
sudo apt-get -y install git gitk 
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
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc

cp ~/git/initial_settings/ubuntu14.04/vimrc ~/.vimrc
cp ~/git/initial_settings/ubuntu14.04/bashrc ~/.bashrc
rm -rf /home/hamko/.vim/bundle/neosnippet-snippets/neosnippets
cp -r ~/git/setting/neosnippets/ /home/hamko/.vim/bundle/neosnippet-snippets/

# fundamentals
sudo apt-get -y install build-essential 
sudo apt-get -y install valgrind gnuplot minicom cmake 
sudo apt-get -y install sshfs screen xclip
sudo apt-get -y install subversion
sudo apt-get -y install rdesktop
sudo apt-get -y install thunar
sudo apt-get -y install ack-grep
sudo apt-get -y install ccache
<<<<<<< HEAD
sudo apt-get -y install curl
=======
sudo apt-get -y install tree
sudo apt-get -y install unar # 文字化けしないunzip
>>>>>>> 237adc521272fba7ae1809e31310bcdec9ff4cb3

sudo apt-get -y install python3-pip
sudo apt-get -y install python3-tk
sudo pip install chainerrl
sudo pip install numpy

# TeX
sudo apt-get -y install texlive texlive-latex-extra ptex-bin dvipsk-ja cmap-adobe-japan1 cmap-adobe-japan2 gs-cjk-resource
sudo apt-get -y install texlive-full

# for Lab
sudo apt-get -y install libcv-dev libhighgui-dev libcvaux-dev libavdevice-dev libavformat-dev libavfilter-dev libavcodec-dev libswscale-dev libavutil-dev libusb-dev freeglut3-dev libusb-1.0-0-dev libgtk2.0-dev
sudo apt-get -y install cmake-curses-gui liboctave-dev octave-control libtiff4-dev 

# Drawing softs
sudo apt-get -y install inkscape gimp

# eigen, qt, glew, yaml, zlib, libjpeg, libode, libpng
sudo apt-get -y install libeigen3-dev libeigen3-doc libqt4-dev libqt4-opengl-dev qt4-dev-tools qt4-qtconfig qt4-doc-html libglew1.6-dev libyaml-dev gettext zlib1g-dev libjpeg62-dev libpng12-dev libode-dev libomniorb4-dev libcos4-dev omniidl omniorb-nameserver libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev libsndfile1-dev uuid-dev

####CPPUNIT
sudo apt-get -y install libcppunit-dev libcppunit-doc libcppunit-subunit-dev libcppunit-subunit0 libqxcppunit-dev libqxcppunitd1 

####OpenGL
#Couldn't find any package whose name or description matched "libglut3-dev"
sudo apt-get -y install freeglut3-dev freeglut3-dbg libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev 

# Java
sudo apt-get -y install icedtea-netx

#TBB
sudo apt-get install -y libtbb-dev

####PCL
sudo apt-get -y install libpcl1-dev

#recordmydesktop
sudo apt-get -y install mencoder
sudo apt-get -y install recordmydesktop gtk-recordmydesktop

# ROS Indigo (14.04 only)
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full python-rosinstall
sudo rosdep init
rosdep update
source ~/.bashrc

exit


# OpenCVは更新が早いので、自動では入れないこととする
>>>>>>> 8604fb4c3fe13694a2d5ecba100eb0dfab0d889a
