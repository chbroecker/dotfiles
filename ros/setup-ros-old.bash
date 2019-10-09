# Installing ROS Kinetic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt update
sudo apt install ros-kinetic-desktop-full

# Installing KBS Software
# opencv-nonfree is needed for kbs-software so needs to be installed first
sudo add-apt-repository --yes ppa:xqms/opencv-nonfree
sudo apt-get update
sudo apt-get install libopencv-nonfree-dev

sudo add-apt-repository ppa:kbs/kbs
sudo apt-get update
sudo apt install kbs-software
sudo apt install libepos2-dev
