#include <RA_hardware_interface/RA_hardware_interface.h>
int main(int argc, char** argv)
{
    ros::init(argc, argv, "RA_hardware_interface");
    ros::CallbackQueue my_queue;

    ros::NodeHandle nh;
    nh.setCallbackQueue(&my_queue);
    RA_hardware_interface::RAHardwareInterface rhi(nh);

    ros::MultiThreadedSpinner spinner(0);
    spinner.spin(&my_queue);
    return 0;
}
