# !!!で検索
cd ~
mkdir build
cd build

# ディレクトリ名を日本語から英語に
LANG=C xdg-user-dirs-gtk-update

sudo apt-get -y install aptitude 
sudo aptitude -y install git sysv-rc-conf

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

git config --global user.email "wakataberyo@gmail.com"
git config --global user.name "Ryo Wakatabe"
git config --global push.default simple

git clone https://github.com/hamko/sandbox.git
git clone https://github.com/hamko/libhamkoutil.git
git clone https://github.com/hamko/setting.git
git clone https://github.com/hamko/initial_settings.git
git clone https://github.com/hamko/cppode.git
git clone https://github.com/hamko/docs.git
git clone https://github.com/hamko/sample.git
