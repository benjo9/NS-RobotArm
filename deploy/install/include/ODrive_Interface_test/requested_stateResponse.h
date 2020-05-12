// Generated by gencpp from file ODrive_Interface_test/requested_stateResponse.msg
// DO NOT EDIT!


#ifndef ODRIVE_INTERFACE_TEST_MESSAGE_REQUESTED_STATERESPONSE_H
#define ODRIVE_INTERFACE_TEST_MESSAGE_REQUESTED_STATERESPONSE_H


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
struct requested_stateResponse_
{
  typedef requested_stateResponse_<ContainerAllocator> Type;

  requested_stateResponse_()
    : result(false)  {
    }
  requested_stateResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct requested_stateResponse_

typedef ::ODrive_Interface_test::requested_stateResponse_<std::allocator<void> > requested_stateResponse;

typedef boost::shared_ptr< ::ODrive_Interface_test::requested_stateResponse > requested_stateResponsePtr;
typedef boost::shared_ptr< ::ODrive_Interface_test::requested_stateResponse const> requested_stateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator1> & lhs, const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator1> & lhs, const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ODrive_Interface_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ODrive_Interface_test/requested_stateResponse";
  }

  static const char* value(const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool result\n"
"\n"
;
  }

  static const char* value(const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct requested_stateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ODrive_Interface_test::requested_stateResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ODRIVE_INTERFACE_TEST_MESSAGE_REQUESTED_STATERESPONSE_H
