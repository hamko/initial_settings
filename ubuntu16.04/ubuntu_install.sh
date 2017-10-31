#!/bin/sh
cd ~
sudo apt -y install vim git gitk fonts-inconsolata
wget -O-  http://ftp.gnu.org/gnu/emacs/emacs-25.1.tar.xz | tar xJvf -
cd emacs-25.1
sudo apt install libgtk-3-dev libwebkitgtk-3.0-dev libgif-dev
./configure --disable-largefile --with-x-toolkit=gtk3 \
    --without-toolkit-scroll-bars --without-xaw3d --without-xim \
    --without-compress-install --with-sound=no --without-pop \
    --without-xpm --without-tiff --without-rsvg --without-gconf \
    --without-gsettings --without-selinux --without-gpm \
    --without-makeinfo --with-x --with-modules --with-xwidgets && time make -j8 
sudo make install
cd -

git config --global user.email "wakataberyo@gmail.com"
git config --global user.name "Ryo Wakatabe"
git config --global push.default simple

mkdir git
cd git
git clone https://github.com/hamko/setting
git clone https://github.com/hamko/initial_settings
git clone https://github.com/hamko/procon
git clone https://github.com/hamko/sample
git clone https://github.com/hamko/libhamkoutil
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc

cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp -r emacs ~/.emacs.d
rm -rf ~/.vim/bundle/neosnippet-snippets/neosnippets
cp -r ~/git/setting/neosnippets/ /home/hamko/.vim/bundle/neosnippet-snippets/

# fundamentals
sudo apt -y install build-essential 
sudo apt -y install valgrind gnuplot minicom cmake 
sudo apt -y install sshfs screen xclip
sudo apt -y install subversion
sudo apt -y install rdesktop
sudo apt -y install byobu
sudo apt -y install ack-grep
sudo apt -y install ccache
sudo apt -y install terminator
sudo apt -y install clang-3.5
sudo apt -y install thunar
sudo apt -y install tree

# python
sudo apt -y install python3-dev
python -V
python3 -V #バージョンを確認。3.5だとする。
sudo apt install python3.5-dev #ここのバージョンとして3.5を入れる
sudo apt install python3-setuptools
sudo easy_install3 pip
pip -V # pipの場所がpython3になっていることを確認

sudo pip install virtualenv
sudo apt install python3-tk python-tk tk-dev


# TeX
sudo apt -y install texlive texlive-latex-extra ptex-bin dvipsk-ja cmap-adobe-japan1 cmap-adobe-japan2 gs-cjk-resource
sudo apt -y install texlive-full

# for Lab
sudo apt -y install libcv-dev libhighgui-dev libcvaux-dev libavdevice-dev libavformat-dev libavfilter-dev libavcodec-dev libswscale-dev libavutil-dev libusb-dev freeglut3-dev libusb-1.0-0-dev libgtk2.0-dev
sudo apt -y install cmake-curses-gui liboctave-dev octave-control libtiff4-dev 
sudo apt -y install scilab
sudo apt -y install scilab

# Drawing softs
sudo apt -y install inkscape gimp vlc

# eigen, qt, glew, yaml, zlib, libjpeg, libode, libpng
sudo apt -y install libeigen3-dev libeigen3-doc libqt4-dev libqt4-opengl-dev qt4-dev-tools qt4-qtconfig qt4-doc-html libglew1.6-dev libyaml-dev gettext zlib1g-dev libjpeg62-dev libpng12-dev libode-dev libomniorb4-dev libcos4-dev omniidl omniorb-nameserver libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev libsndfile1-dev uuid-dev

####CPPUNIT
sudo apt -y install libcppunit-dev libcppunit-doc libcppunit-subunit-dev libcppunit-subunit0 libqxcppunit-dev libqxcppunitd1 

####OpenGL
#Couldn't find any package whose name or description matched "libglut3-dev"
sudo apt -y install freeglut3-dev freeglut3-dbg libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev 

# Java
sudo apt -y install icedtea-netx

#TBB
sudo apt install -y libtbb-dev

####PCL
sudo apt -y install libpcl1-dev

#recordmydesktop
sudo apt -y install mencoder
#sudo apt -y install recordmydesktop gtk-recordmydesktop

sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt update
sudo apt install simplescreenrecorder

exit
