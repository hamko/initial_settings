# !!!で検索
cd ~
mkdir build
cd build

sudo apt-get -y install aptitude 
sudo aptitude -y install git sysv-rc-conf

git config --global github.name hamko
git config --global user.name hamko
git config --global github.email !!!your email!!!
git config --global user.email !!!your email!!!
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'
git config --global core.excludesfile ~/git/setting/config/.gitignore

git config --global alias.co 'checkout'
git config --global alias.st 'status'
git config --global alias.ci 'commit -a'
git config --global alias.di 'diff'
git config --global alias.br 'branch'

cd ~
mkdir git
cd git
git clone https://github.com/hamko/sandbox.git
git clone https://github.com/hamko/libhamkoutil.git
git clone https://github.com/hamko/setting.git
git clone https://github.com/hamko/initial_settings.git
git clone https://github.com/hamko/cppode.git
git clone https://github.com/hamko/docs.git
git clone https://github.com/hamko/sample.git

# dropbox (sudo aptitude install dropboxじゃダメ？)
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
sudo cp dropbox /etc/init.d/dropbox
sudo sysv-rc-conf dropbox on
~/.dropbox-dist/dropboxd &

cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp zshrc ~/.zshrc
