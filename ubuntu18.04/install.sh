#!/bin/sh
cp vimrc ~/.vimrc
cp bashrc ~/.bashrc

cd ~
sudo apt -y install vim git gitk fonts-inconsolata

git config --global user.email "wakataberyo@gmail.com"
git config --global user.name "Ryo Wakatabe"
git config --global push.default simple

mkdir git
cd git
git clone https://github.com/hamko/setting


# fundamentals
sudo apt -y install build-essential 
sudo apt -y install valgrind gnuplot minicom cmake 
sudo apt -y install sshfs screen xclip
sudo apt -y install rdesktop
sudo apt -y install clang
sudo apt -y install thunar
sudo apt -y install tree

# python
sudo apt -y install python3

# TeX
sudo apt -y install texlive texlive-latex-extra ptex-bin dvipsk-ja cmap-adobe-japan1 cmap-adobe-japan2 gs-cjk-resource
sudo apt -y install texlive-full

# Drawing softs
sudo apt -y install inkscape gimp vlc

# Java
sudo apt -y install icedtea-netx

#TBB
sudo apt -y install libtbb-dev
