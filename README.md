![logo](images/robot_icon_and_logo.jpg)

install:

sudo apt-get install git

git clone https://github.com/Noothless/NS-RobotArm.git

cd ~/NS-RobotArm

./install.sh

demo launch:

cd robot_ws

source install/setup.bash

roslaunch myworkcell_moveit_config demo.launch
