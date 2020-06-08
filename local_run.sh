#! /bin/bash

git pull origin release
cd ~/NS-RobotArm/robot_ws/
catkin build
source install/setup.bash
