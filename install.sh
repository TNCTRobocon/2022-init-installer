# install ros and so on
sudo apt update
sudo apt install gcc g++ g++-10 python3-pip net-tools cmake make openssh-server can-utils clang vim unar libasound2-dev curl -y

pip install simpleaudio

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update
sudo apt install ros-noetic-ros-base -y

sudo apt install python3-rosdep -y
sudo rosdep init
rosdep update

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/noetic/setup.bash

sudo apt -y install python3-rosinstall
sudo apt install -y python3-catkin-tools 
