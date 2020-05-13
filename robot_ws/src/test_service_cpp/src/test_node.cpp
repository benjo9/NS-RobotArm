#include <sstream>
#include "ros/ros.h"
#include "test_service_cpp/driver.h"


int main(int argc, char **argv)
{
  ros::NodeHandle n;
  ros::ServiceClient drive_axis = n.serviceClient<test_service_cpp::driver>("drive_axis");
  test_service_cpp::driver driver;
  driver.request.axis = 6;
  driver.request.value = 100000;
  print(drive_axis.call(driver))
  return 0;
}
