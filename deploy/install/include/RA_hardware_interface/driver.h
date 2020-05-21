// Generated by gencpp from file RA_hardware_interface/driver.msg
// DO NOT EDIT!


#ifndef RA_HARDWARE_INTERFACE_MESSAGE_DRIVER_H
#define RA_HARDWARE_INTERFACE_MESSAGE_DRIVER_H

#include <ros/service_traits.h>


#include <RA_hardware_interface/driverRequest.h>
#include <RA_hardware_interface/driverResponse.h>


namespace RA_hardware_interface
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
} // namespace RA_hardware_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::RA_hardware_interface::driver > {
  static const char* value()
  {
    return "6f5723450e3c67d0d72065dca6e91464";
  }

  static const char* value(const ::RA_hardware_interface::driver&) { return value(); }
};

template<>
struct DataType< ::RA_hardware_interface::driver > {
  static const char* value()
  {
    return "RA_hardware_interface/driver";
  }

  static const char* value(const ::RA_hardware_interface::driver&) { return value(); }
};


// service_traits::MD5Sum< ::RA_hardware_interface::driverRequest> should match
// service_traits::MD5Sum< ::RA_hardware_interface::driver >
template<>
struct MD5Sum< ::RA_hardware_interface::driverRequest>
{
  static const char* value()
  {
    return MD5Sum< ::RA_hardware_interface::driver >::value();
  }
  static const char* value(const ::RA_hardware_interface::driverRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::RA_hardware_interface::driverRequest> should match
// service_traits::DataType< ::RA_hardware_interface::driver >
template<>
struct DataType< ::RA_hardware_interface::driverRequest>
{
  static const char* value()
  {
    return DataType< ::RA_hardware_interface::driver >::value();
  }
  static const char* value(const ::RA_hardware_interface::driverRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::RA_hardware_interface::driverResponse> should match
// service_traits::MD5Sum< ::RA_hardware_interface::driver >
template<>
struct MD5Sum< ::RA_hardware_interface::driverResponse>
{
  static const char* value()
  {
    return MD5Sum< ::RA_hardware_interface::driver >::value();
  }
  static const char* value(const ::RA_hardware_interface::driverResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::RA_hardware_interface::driverResponse> should match
// service_traits::DataType< ::RA_hardware_interface::driver >
template<>
struct DataType< ::RA_hardware_interface::driverResponse>
{
  static const char* value()
  {
    return DataType< ::RA_hardware_interface::driver >::value();
  }
  static const char* value(const ::RA_hardware_interface::driverResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RA_HARDWARE_INTERFACE_MESSAGE_DRIVER_H