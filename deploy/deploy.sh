#! /bin/bash

if [ -d ~/NS-RobotArm/deploy/install ]; then rm -Rf ~/NS-RobotArm/deploy/install; fi
cp -r ~/NS-RobotArm/robot_ws/install/ ~/NS-RobotArm/deploy/
git add .
git commit -m "deploy"
git push -u origin master
git push -u origin master:deploy
