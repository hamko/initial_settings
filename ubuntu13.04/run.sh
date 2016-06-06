# !!!で検索
sudo apt-get -y install vim git sysv-rc-conf
git config --global github.name hamko
git config --global user.name hamko
git config --global github.email wakataberyo@gmail.com
git config --global user.email wakataberyo@gmail.com
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

cp ~/git/setting/rc/.inputrc ~
cp ~/git/setting/rc/.commonrc ~
cp ~/git/setting/rc/.vimrc ~
cp ~/git/setting/rc/.bashrc ~
cp ~/git/setting/rc/.zshrc ~

# dropbox (sudo apt-get install dropboxじゃダメ？)
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#sudo cp dropbox /etc/init.d/dropbox
#sudo sysv-rc-conf dropbox on
#~/.dropbox-dist/dropboxd &


