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
sudo apt -y install tree
sudo apt -y install curl
sudo apt -y install net-tools
sudo apt -y install docker-compose

# python
sudo apt -y install python3

# Drawing softs
sudo apt -y install inkscape gimp vlc

# Japanese input
sudo apt -y install task-japanese-gnome-desktop language-pack-gnome-ja-base language-pack-gnome-ja gnome-user-docs-ja libreoffice-help-ja libreoffice-l10n-ja thunderbird-locale-ja fonts-noto-cjk-extra
# Settings > Keyboard > Keyboard Shortcuts > Typing > Set Ctrl-Space

# node.js
sudo dpkg --remove --force-remove-reinstreq libnode-dev
sudo dpkg --remove --force-remove-reinstreq libnode72:amd64
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# parallel
sudo apt -y install parallel

# GPU
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt --purge remove nvidia-*
sudo apt --purge remove cuda-*
sudo ubuntu-drivers autoinstall
sudo apt install -y nvidia-cuda-toolkit
sudo apt install -y nvtop
nvidia-smi # To check if GPU is used
nvtop # To check how GPU is used
