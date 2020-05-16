#include <sstream>
#include <RA_hardware_interface/RA_hardware_interface.h>
#include <joint_limits_interface/joint_limits_interface.h>
#include <joint_limits_interface/joint_limits.h>
#include <joint_limits_interface/joint_limits_urdf.h>
#include <joint_limits_interface/joint_limits_rosparam.h>
#include "ODrive_Interface_test/driver.h"
#include "ODrive_Interface_test/feedback.h"

using namespace hardware_interface;
using joint_limits_interface::JointLimits;
using joint_limits_interface::SoftJointLimits;
using joint_limits_interface::PositionJointSoftLimitsHandle;
using joint_limits_interface::PositionJointSoftLimitsInterface;

namespace RA_hardware_interface
{
    RAHardwareInterface::RAHardwareInterface(ros::NodeHandle& nh) : nh_(nh)
    {
        ROS_INFO("ROS init");
        init();
        controller_manager_.reset(new controller_manager::ControllerManager(this, nh_));

        nh_.param("/RA/hardware_interface/loop_hz", loop_hz_, 0.1);
        ros::Duration update_freq = ros::Duration(1.0/loop_hz_);
        non_realtime_loop_ = nh_.createTimer(update_freq, &RAHardwareInterface::update, this);
        drive_axis = nh_.serviceClient<ODrive_Interface_test::driver>("drive_axis");
        axis_position = nh_.serviceClient<ODrive_Interface_test::feedback>("axis_position");
    }

    RAHardwareInterface::~RAHardwareInterface() {

    }

    void RAHardwareInterface::init() {
        ROS_INFO("init:1");
        const char *jn[6] = {"Rev1", "Rev2", "Rev3", "Rev4", "Rev5", "Rev6"};
        // Get joint names
        nh_.getParam("/RA/hardware_interface/joints", joint_names_);
        num_joints_ = joint_names_.size();
        ROS_INFO("init:2");
        // Resize vectors
        joint_position_.resize(num_joints_);
        joint_velocity_.resize(num_joints_);
        joint_effort_.resize(num_joints_);
        joint_position_command_.resize(num_joints_);
        joint_velocity_command_.resize(num_joints_);
        joint_effort_command_.resize(num_joints_);
        ROS_INFO("init:3");
        // Initialize Controller
        for (int i = 0; i < num_joints_; ++i) {
             // Create joint state interface
            JointStateHandle jointStateHandle(jn[i], &joint_position_[i], &joint_velocity_[i], &joint_effort_[i]);
            joint_state_interface_.registerHandle(jointStateHandle);
            ROS_INFO("init:4");
            // Create position joint interface
            JointHandle jointPositionHandle(jointStateHandle, &joint_position_command_[i]);
            JointLimits limits;
                SoftJointLimits softLimits;
            if(getJointLimits(jn[i], nh_, limits) == false) {
                ROS_INFO("Error!");
            }
            PositionJointSoftLimitsHandle jointLimitsHandle(jointPositionHandle, limits, softLimits);
            positionJointSoftLimitsInterface.registerHandle(jointLimitsHandle);
            position_joint_interface_.registerHandle(jointPositionHandle);
            ROS_INFO("init:5");
            // Create effort joint interface
            JointHandle jointEffortHandle(jointStateHandle, &joint_effort_command_[i]);
            effort_joint_interface_.registerHandle(jointEffortHandle);
        }
        ROS_INFO("init:6");
        registerInterface(&joint_state_interface_);
        registerInterface(&position_joint_interface_);
        registerInterface(&effort_joint_interface_);
        registerInterface(&positionJointSoftLimitsInterface);
    }

    void RAHardwareInterface::update(const ros::TimerEvent& e) {
        ROS_INFO("update:1");
        elapsed_time_ = ros::Duration(e.current_real - e.last_real);
        read();
        controller_manager_->update(ros::Time::now(), elapsed_time_);
        write(elapsed_time_);
        ROS_INFO("update:2");
    }

    void RAHardwareInterface::read() {
        for (int i = 0; i < num_joints_; i++) {
            ROS_INFO("read:1");
            ODrive_Interface_test::feedback feedback;
            feedback.request.axis = i + 1;
            joint_position_[i] = axis_position.call(feedback);
            //ROS_INFO(joint_position_[i]);
            ROS_INFO("read:2");
        }
    }

    void RAHardwareInterface::write(ros::Duration elapsed_time) {
        positionJointSoftLimitsInterface.enforceLimits(elapsed_time);
        for (int i = 0; i < num_joints_; i++) {
            ROS_INFO("write:1");
            ODrive_Interface_test::driver driver;
            driver.request.axis = i + 1;
            driver.request.value = joint_position_command_[i];
            if(drive_axis.call(driver))
            {
              ROS_INFO("true");
            } else
            {
              ROS_INFO("false");
            }

            ROS_INFO("write:2");
        }
    }
}
