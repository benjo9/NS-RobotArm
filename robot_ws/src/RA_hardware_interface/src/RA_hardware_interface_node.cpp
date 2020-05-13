#include <RA_hardware_interface/RA_hardware_interface.h>
int main(int argc, char** argv)
{
    ros::init(argc, argv, "RA_hardware_interface");

    ros::NodeHandle nh;
    RA_hardware_interface::RAHardwareInterface rhi(nh);

    ros::AsyncSpinner spinner(1);
    spinner.start();

    ros::spin();

    return 0;
}
