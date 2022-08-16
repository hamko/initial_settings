sudo vi /etc/default/keyboard
# XKBOPTIONS="ctrl:nocaps"
# logout
# login

# Install Chrome

sudo apt update
sudo apt upgrade

sudo apt -y install git

cd ~
mkdir git
git clone https://github.com/hamko/initial_settings
cd git/initial_settings
