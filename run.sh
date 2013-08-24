sudo apt-get install aptitude 
sudo aptitude install git
git config --global github.name hamko
git config --global github.email !!!your email!!!
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

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
