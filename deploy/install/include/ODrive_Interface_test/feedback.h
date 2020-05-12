// Generated by gencpp from file ODrive_Interface_test/feedback.msg
// DO NOT EDIT!


#ifndef ODRIVE_INTERFACE_TEST_MESSAGE_FEEDBACK_H
#define ODRIVE_INTERFACE_TEST_MESSAGE_FEEDBACK_H

#include <ros/service_traits.h>


#include <ODrive_Interface_test/feedbackRequest.h>
#include <ODrive_Interface_test/feedbackResponse.h>


namespace ODrive_Interface_test
{

struct feedback
{

typedef feedbackRequest Request;
typedef feedbackResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct feedback
} // namespace ODrive_Interface_test


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ODrive_Interface_test::feedback > {
  static const char* value()
  {
    return "64b7d5a934e60038fcb2666a62ef99e5";
  }

  static const char* value(const ::ODrive_Interface_test::feedback&) { return value(); }
};

template<>
struct DataType< ::ODrive_Interface_test::feedback > {
  static const char* value()
  {
    return "ODrive_Interface_test/feedback";
  }

  static const char* value(const ::ODrive_Interface_test::feedback&) { return value(); }
};


// service_traits::MD5Sum< ::ODrive_Interface_test::feedbackRequest> should match
// service_traits::MD5Sum< ::ODrive_Interface_test::feedback >
template<>
struct MD5Sum< ::ODrive_Interface_test::feedbackRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ODrive_Interface_test::feedback >::value();
  }
  static const char* value(const ::ODrive_Interface_test::feedbackRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ODrive_Interface_test::feedbackRequest> should match
// service_traits::DataType< ::ODrive_Interface_test::feedback >
template<>
struct DataType< ::ODrive_Interface_test::feedbackRequest>
{
  static const char* value()
  {
    return DataType< ::ODrive_Interface_test::feedback >::value();
  }
  static const char* value(const ::ODrive_Interface_test::feedbackRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ODrive_Interface_test::feedbackResponse> should match
// service_traits::MD5Sum< ::ODrive_Interface_test::feedback >
template<>
struct MD5Sum< ::ODrive_Interface_test::feedbackResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ODrive_Interface_test::feedback >::value();
  }
  static const char* value(const ::ODrive_Interface_test::feedbackResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ODrive_Interface_test::feedbackResponse> should match
// service_traits::DataType< ::ODrive_Interface_test::feedback >
template<>
struct DataType< ::ODrive_Interface_test::feedbackResponse>
{
  static const char* value()
  {
    return DataType< ::ODrive_Interface_test::feedback >::value();
  }
  static const char* value(const ::ODrive_Interface_test::feedbackResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ODRIVE_INTERFACE_TEST_MESSAGE_FEEDBACK_H
