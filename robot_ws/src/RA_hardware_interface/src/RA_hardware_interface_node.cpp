#include <RA_hardware_interface/RA_hardware_interface.h>
#include <ros/callback_queue.h>
#include <ros/console.h>

int main(int argc, char** argv)
{
    ROS_INFO("main");

    ros::init(argc, argv, "RA_hardware_interface");

    ros::NodeHandle nh;

    ros::AsyncSpinner spinner(1);
    spinner.start();


    RA_hardware_interface::RAHardwareInterface rhi(nh);
    ROS_INFO("RA_hardware_interface");

    ros::spin();

    return 0;
}
