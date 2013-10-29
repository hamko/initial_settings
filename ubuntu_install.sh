sudo su

sudo apt-get -y install aptitude
sudo aptitude -y install git gitk 
sudo aptitude -y install subversion
sudo aptitude -y install valgrind
sudo aptitude -y install libboost-all-dev
sudo aptitude -y install gnuplot
sudo aptitude -y install minicom
sudo aptitude -y install cmake cmake-curses-gui
sudo aptitude -y install octave3.2 octave3.2-headers octave3.2-htmldoc

####CPPUNIT
sudo aptitude -y install libcppunit-1.12-1 libcppunit-dev libcppunit-doc libcppunit-subunit-dev libcppunit-subunit0 libqxcppunit-dev libqxcppunitd1

####PCL
sudo add-apt-repository -y ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get -y update
sudo apt-get -y install libpcl-all

##exfat error!
sudo add-apt-repository -y ppa:relan/exfat 
sudo apt-get -y update
sudo apt-get -y install fuse-exfat exfat-utils

####ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-groovy-desktop-full
source /opt/ros/groovy/setup.bash

##Catkin workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make
source devel/setup.bash


##Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
sudo aptitude update
yes | sudo aptitude install google-chrome-beta

#Dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update && sudo apt-get install nautilus-dropbox

####OpenGL
#Couldn't find any package whose name or description matched "libglut3-dev"
sudo aptitude install freeglut3-dev freeglut3-dbg  libglut3-dev libglew1.5-dev libgtkglext1-dev libxmu-dev libxi-dev build-essential


