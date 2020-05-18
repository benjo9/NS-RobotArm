// Generated by gencpp from file RA_hardware_interface/requested_state.msg
// DO NOT EDIT!


#ifndef RA_HARDWARE_INTERFACE_MESSAGE_REQUESTED_STATE_H
#define RA_HARDWARE_INTERFACE_MESSAGE_REQUESTED_STATE_H

#include <ros/service_traits.h>


#include <RA_hardware_interface/requested_stateRequest.h>
#include <RA_hardware_interface/requested_stateResponse.h>


namespace RA_hardware_interface
{

struct requested_state
{

typedef requested_stateRequest Request;
typedef requested_stateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct requested_state
} // namespace RA_hardware_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::RA_hardware_interface::requested_state > {
  static const char* value()
  {
    return "b06410045851cc21cdfe462a30e6cdb3";
  }

  static const char* value(const ::RA_hardware_interface::requested_state&) { return value(); }
};

template<>
struct DataType< ::RA_hardware_interface::requested_state > {
  static const char* value()
  {
    return "RA_hardware_interface/requested_state";
  }

  static const char* value(const ::RA_hardware_interface::requested_state&) { return value(); }
};


// service_traits::MD5Sum< ::RA_hardware_interface::requested_stateRequest> should match
// service_traits::MD5Sum< ::RA_hardware_interface::requested_state >
template<>
struct MD5Sum< ::RA_hardware_interface::requested_stateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::RA_hardware_interface::requested_state >::value();
  }
  static const char* value(const ::RA_hardware_interface::requested_stateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::RA_hardware_interface::requested_stateRequest> should match
// service_traits::DataType< ::RA_hardware_interface::requested_state >
template<>
struct DataType< ::RA_hardware_interface::requested_stateRequest>
{
  static const char* value()
  {
    return DataType< ::RA_hardware_interface::requested_state >::value();
  }
  static const char* value(const ::RA_hardware_interface::requested_stateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::RA_hardware_interface::requested_stateResponse> should match
// service_traits::MD5Sum< ::RA_hardware_interface::requested_state >
template<>
struct MD5Sum< ::RA_hardware_interface::requested_stateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::RA_hardware_interface::requested_state >::value();
  }
  static const char* value(const ::RA_hardware_interface::requested_stateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::RA_hardware_interface::requested_stateResponse> should match
// service_traits::DataType< ::RA_hardware_interface::requested_state >
template<>
struct DataType< ::RA_hardware_interface::requested_stateResponse>
{
  static const char* value()
  {
    return DataType< ::RA_hardware_interface::requested_state >::value();
  }
  static const char* value(const ::RA_hardware_interface::requested_stateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RA_HARDWARE_INTERFACE_MESSAGE_REQUESTED_STATE_H
