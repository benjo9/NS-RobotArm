#! /bin/bash

cd ~/NS-RobotArm/robot_ws/src/
git clone https://github.com/jmeyer1292/fake_ar_publisher.git
cd ..
catkin init
catkin build
source devel/setup.bash
