// Generated by gencpp from file ODrive_Interface_test/driver.msg
// DO NOT EDIT!


#ifndef ODRIVE_INTERFACE_TEST_MESSAGE_DRIVER_H
#define ODRIVE_INTERFACE_TEST_MESSAGE_DRIVER_H

#include <ros/service_traits.h>


#include <ODrive_Interface_test/driverRequest.h>
#include <ODrive_Interface_test/driverResponse.h>


namespace ODrive_Interface_test
{

struct driver
{

typedef driverRequest Request;
typedef driverResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct driver
} // namespace ODrive_Interface_test


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ODrive_Interface_test::driver > {
  static const char* value()
  {
    return "6f5723450e3c67d0d72065dca6e91464";
  }

  static const char* value(const ::ODrive_Interface_test::driver&) { return value(); }
};

template<>
struct DataType< ::ODrive_Interface_test::driver > {
  static const char* value()
  {
    return "ODrive_Interface_test/driver";
  }

  static const char* value(const ::ODrive_Interface_test::driver&) { return value(); }
};


// service_traits::MD5Sum< ::ODrive_Interface_test::driverRequest> should match
// service_traits::MD5Sum< ::ODrive_Interface_test::driver >
template<>
struct MD5Sum< ::ODrive_Interface_test::driverRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ODrive_Interface_test::driver >::value();
  }
  static const char* value(const ::ODrive_Interface_test::driverRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ODrive_Interface_test::driverRequest> should match
// service_traits::DataType< ::ODrive_Interface_test::driver >
template<>
struct DataType< ::ODrive_Interface_test::driverRequest>
{
  static const char* value()
  {
    return DataType< ::ODrive_Interface_test::driver >::value();
  }
  static const char* value(const ::ODrive_Interface_test::driverRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ODrive_Interface_test::driverResponse> should match
// service_traits::MD5Sum< ::ODrive_Interface_test::driver >
template<>
struct MD5Sum< ::ODrive_Interface_test::driverResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ODrive_Interface_test::driver >::value();
  }
  static const char* value(const ::ODrive_Interface_test::driverResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ODrive_Interface_test::driverResponse> should match
// service_traits::DataType< ::ODrive_Interface_test::driver >
template<>
struct DataType< ::ODrive_Interface_test::driverResponse>
{
  static const char* value()
  {
    return DataType< ::ODrive_Interface_test::driver >::value();
  }
  static const char* value(const ::ODrive_Interface_test::driverResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ODRIVE_INTERFACE_TEST_MESSAGE_DRIVER_H
