// Generated by gencpp from file ros_control_boilerplate/driverResponse.msg
// DO NOT EDIT!


#ifndef ROS_CONTROL_BOILERPLATE_MESSAGE_DRIVERRESPONSE_H
#define ROS_CONTROL_BOILERPLATE_MESSAGE_DRIVERRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_control_boilerplate
{
template <class ContainerAllocator>
struct driverResponse_
{
  typedef driverResponse_<ContainerAllocator> Type;

  driverResponse_()
    : result(false)  {
    }
  driverResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> const> ConstPtr;

}; // struct driverResponse_

typedef ::ros_control_boilerplate::driverResponse_<std::allocator<void> > driverResponse;

typedef boost::shared_ptr< ::ros_control_boilerplate::driverResponse > driverResponsePtr;
typedef boost::shared_ptr< ::ros_control_boilerplate::driverResponse const> driverResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_control_boilerplate::driverResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_control_boilerplate::driverResponse_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::driverResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_control_boilerplate::driverResponse_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::driverResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_control_boilerplate

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::ros_control_boilerplate::driverResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_control_boilerplate/driverResponse";
  }

  static const char* value(const ::ros_control_boilerplate::driverResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool result\n"
"\n"
;
  }

  static const char* value(const ::ros_control_boilerplate::driverResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct driverResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_control_boilerplate::driverResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_control_boilerplate::driverResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_CONTROL_BOILERPLATE_MESSAGE_DRIVERRESPONSE_H