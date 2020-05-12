// Generated by gencpp from file ODrive_Interface_test/velocityRequest.msg
// DO NOT EDIT!


#ifndef ODRIVE_INTERFACE_TEST_MESSAGE_VELOCITYREQUEST_H
#define ODRIVE_INTERFACE_TEST_MESSAGE_VELOCITYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ODrive_Interface_test
{
template <class ContainerAllocator>
struct velocityRequest_
{
  typedef velocityRequest_<ContainerAllocator> Type;

  velocityRequest_()
    : axis(0)
    , value(0)  {
    }
  velocityRequest_(const ContainerAllocator& _alloc)
    : axis(0)
    , value(0)  {
  (void)_alloc;
    }



   typedef int16_t _axis_type;
  _axis_type axis;

   typedef int32_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> const> ConstPtr;

}; // struct velocityRequest_

typedef ::ODrive_Interface_test::velocityRequest_<std::allocator<void> > velocityRequest;

typedef boost::shared_ptr< ::ODrive_Interface_test::velocityRequest > velocityRequestPtr;
typedef boost::shared_ptr< ::ODrive_Interface_test::velocityRequest const> velocityRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator1> & lhs, const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator2> & rhs)
{
  return lhs.axis == rhs.axis &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator1> & lhs, const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ODrive_Interface_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "678e13c1fe4ebe3f4b3a3a1a5aee7968";
  }

  static const char* value(const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x678e13c1fe4ebe3fULL;
  static const uint64_t static_value2 = 0x4b3a3a1a5aee7968ULL;
};

template<class ContainerAllocator>
struct DataType< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ODrive_Interface_test/velocityRequest";
  }

  static const char* value(const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int16 axis\n"
"int32 value\n"
;
  }

  static const char* value(const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.axis);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct velocityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ODrive_Interface_test::velocityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ODrive_Interface_test::velocityRequest_<ContainerAllocator>& v)
  {
    s << indent << "axis: ";
    Printer<int16_t>::stream(s, indent + "  ", v.axis);
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ODRIVE_INTERFACE_TEST_MESSAGE_VELOCITYREQUEST_H
