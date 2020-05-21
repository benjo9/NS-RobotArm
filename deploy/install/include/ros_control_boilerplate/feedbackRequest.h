// Generated by gencpp from file ros_control_boilerplate/feedbackRequest.msg
// DO NOT EDIT!


#ifndef ROS_CONTROL_BOILERPLATE_MESSAGE_FEEDBACKREQUEST_H
#define ROS_CONTROL_BOILERPLATE_MESSAGE_FEEDBACKREQUEST_H


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
struct feedbackRequest_
{
  typedef feedbackRequest_<ContainerAllocator> Type;

  feedbackRequest_()
    : axis(0)  {
    }
  feedbackRequest_(const ContainerAllocator& _alloc)
    : axis(0)  {
  (void)_alloc;
    }



   typedef int16_t _axis_type;
  _axis_type axis;





  typedef boost::shared_ptr< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> const> ConstPtr;

}; // struct feedbackRequest_

typedef ::ros_control_boilerplate::feedbackRequest_<std::allocator<void> > feedbackRequest;

typedef boost::shared_ptr< ::ros_control_boilerplate::feedbackRequest > feedbackRequestPtr;
typedef boost::shared_ptr< ::ros_control_boilerplate::feedbackRequest const> feedbackRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator2> & rhs)
{
  return lhs.axis == rhs.axis;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_control_boilerplate

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1cf916eb1dedd54ae49bec64eb2326a5";
  }

  static const char* value(const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1cf916eb1dedd54aULL;
  static const uint64_t static_value2 = 0xe49bec64eb2326a5ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_control_boilerplate/feedbackRequest";
  }

  static const char* value(const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int16 axis\n"
;
  }

  static const char* value(const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.axis);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct feedbackRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_control_boilerplate::feedbackRequest_<ContainerAllocator>& v)
  {
    s << indent << "axis: ";
    Printer<int16_t>::stream(s, indent + "  ", v.axis);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_CONTROL_BOILERPLATE_MESSAGE_FEEDBACKREQUEST_H