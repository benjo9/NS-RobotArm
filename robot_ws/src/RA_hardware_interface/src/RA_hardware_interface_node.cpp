#include <RA_hardware_interface/RA_hardware_interface.h>
int main(int argc, char** argv)
{
    ros::init(argc, argv, "RA_hardware_interface");

    ros::NodeHandle nh;
    RA_hardware_interface::RAHardwareInterface rhi(nh);

    ros::MultiThreadedSpinner spinner(0);
    spinner.spin(&ros_queue);
    return 0;
}
