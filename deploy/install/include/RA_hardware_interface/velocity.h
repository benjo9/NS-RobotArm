// Generated by gencpp from file RA_hardware_interface/velocity.msg
// DO NOT EDIT!


#ifndef RA_HARDWARE_INTERFACE_MESSAGE_VELOCITY_H
#define RA_HARDWARE_INTERFACE_MESSAGE_VELOCITY_H

#include <ros/service_traits.h>


#include <RA_hardware_interface/velocityRequest.h>
#include <RA_hardware_interface/velocityResponse.h>


namespace RA_hardware_interface
{

struct velocity
{

typedef velocityRequest Request;
typedef velocityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct velocity
} // namespace RA_hardware_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::RA_hardware_interface::velocity > {
  static const char* value()
  {
    return "6f5723450e3c67d0d72065dca6e91464";
  }

  static const char* value(const ::RA_hardware_interface::velocity&) { return value(); }
};

template<>
struct DataType< ::RA_hardware_interface::velocity > {
  static const char* value()
  {
    return "RA_hardware_interface/velocity";
  }

  static const char* value(const ::RA_hardware_interface::velocity&) { return value(); }
};


// service_traits::MD5Sum< ::RA_hardware_interface::velocityRequest> should match
// service_traits::MD5Sum< ::RA_hardware_interface::velocity >
template<>
struct MD5Sum< ::RA_hardware_interface::velocityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::RA_hardware_interface::velocity >::value();
  }
  static const char* value(const ::RA_hardware_interface::velocityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::RA_hardware_interface::velocityRequest> should match
// service_traits::DataType< ::RA_hardware_interface::velocity >
template<>
struct DataType< ::RA_hardware_interface::velocityRequest>
{
  static const char* value()
  {
    return DataType< ::RA_hardware_interface::velocity >::value();
  }
  static const char* value(const ::RA_hardware_interface::velocityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::RA_hardware_interface::velocityResponse> should match
// service_traits::MD5Sum< ::RA_hardware_interface::velocity >
template<>
struct MD5Sum< ::RA_hardware_interface::velocityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::RA_hardware_interface::velocity >::value();
  }
  static const char* value(const ::RA_hardware_interface::velocityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::RA_hardware_interface::velocityResponse> should match
// service_traits::DataType< ::RA_hardware_interface::velocity >
template<>
struct DataType< ::RA_hardware_interface::velocityResponse>
{
  static const char* value()
  {
    return DataType< ::RA_hardware_interface::velocity >::value();
  }
  static const char* value(const ::RA_hardware_interface::velocityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RA_HARDWARE_INTERFACE_MESSAGE_VELOCITY_H