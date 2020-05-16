#include <RA_hardware_interface/RA_hardware_interface.h>
#include <ros/callback_queue.h>
#include <ros/console.h>

int main(int argc, char** argv)
{
    ROS_INFO("main");

    ros::init(argc, argv, "RA_hardware_interface");
    ros::CallbackQueue ros_queue;
    ros::NodeHandle nh;

    nh.setCallbackQueue(&ros_queue);

    RA_hardware_interface::RAHardwareInterface rhi(nh);

    ROS_INFO("RA_hardware_interface");

    ros::MultiThreadedSpinner spinner(0);
	spinner.spin(&ros_queue);

    return 0;
}
