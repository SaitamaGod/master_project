// Generated by gencpp from file dyret_common/ConfigureRequest.msg
// DO NOT EDIT!


#ifndef DYRET_COMMON_MESSAGE_CONFIGUREREQUEST_H
#define DYRET_COMMON_MESSAGE_CONFIGUREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dyret_common/Configuration.h>

namespace dyret_common
{
template <class ContainerAllocator>
struct ConfigureRequest_
{
  typedef ConfigureRequest_<ContainerAllocator> Type;

  ConfigureRequest_()
    : configuration()  {
    }
  ConfigureRequest_(const ContainerAllocator& _alloc)
    : configuration(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dyret_common::Configuration_<ContainerAllocator>  _configuration_type;
  _configuration_type configuration;





  typedef boost::shared_ptr< ::dyret_common::ConfigureRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dyret_common::ConfigureRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigureRequest_

typedef ::dyret_common::ConfigureRequest_<std::allocator<void> > ConfigureRequest;

typedef boost::shared_ptr< ::dyret_common::ConfigureRequest > ConfigureRequestPtr;
typedef boost::shared_ptr< ::dyret_common::ConfigureRequest const> ConfigureRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dyret_common::ConfigureRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dyret_common::ConfigureRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dyret_common::ConfigureRequest_<ContainerAllocator1> & lhs, const ::dyret_common::ConfigureRequest_<ContainerAllocator2> & rhs)
{
  return lhs.configuration == rhs.configuration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dyret_common::ConfigureRequest_<ContainerAllocator1> & lhs, const ::dyret_common::ConfigureRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dyret_common

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dyret_common::ConfigureRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dyret_common::ConfigureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dyret_common::ConfigureRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a206986259313c646df874e0cdc26d98";
  }

  static const char* value(const ::dyret_common::ConfigureRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa206986259313c64ULL;
  static const uint64_t static_value2 = 0x6df874e0cdc26d98ULL;
};

template<class ContainerAllocator>
struct DataType< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dyret_common/ConfigureRequest";
  }

  static const char* value(const ::dyret_common::ConfigureRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"dyret_common/Configuration configuration\n"
"\n"
"\n"
"================================================================================\n"
"MSG: dyret_common/Configuration\n"
"# This message represents the configuration of the servos\n"
"#\n"
"# - The configuration is applied to all servos if the id array is empty.\n"
"# - All parameters are added sequentially in the parameter field, so\n"
"# the length of this array may be a multiple of the number of servos in\n"
"# cases where there are more than one parameter per servo needed\n"
"\n"
"# Header for general bookkeeping\n"
"std_msgs/Header header\n"
"\n"
"dyret_common/RevoluteConfig revolute\n"
"dyret_common/PrismaticConfig prismatic\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: dyret_common/RevoluteConfig\n"
"# This message represents the configuration of the revolute joints\n"
"#\n"
"# - The configuration is applied to all joints if the id array is empty.\n"
"# - All parameters are added sequentially in the parameter field, so\n"
"# the length of this array may be a multiple of the number of joints in\n"
"# cases where there are more than one parameter per joint needed\n"
"\n"
"# Joint IDs\n"
"uint8[] ids\n"
"\n"
"# Configuration parameters\n"
"float64[] parameters\n"
"\n"
"# Configuration type\n"
"uint8 type\n"
"\n"
"uint8 TYPE_SET_SPEED      = 0\n"
"uint8 TYPE_SET_PID        = 1\n"
"uint8 TYPE_ENABLE_TORQUE  = 2\n"
"uint8 TYPE_DISABLE_TORQUE = 3\n"
"\n"
"================================================================================\n"
"MSG: dyret_common/PrismaticConfig\n"
"# This message represents the configuration of the prismatic joints\n"
"#\n"
"# - The configuration is applied to all joints if the id array is empty.\n"
"# - All parameters are added sequentially in the parameter field, so\n"
"# the length of this array may be a multiple of the number of joints in\n"
"# cases where there are more than one parameter per joint needed\n"
"\n"
"# Joint IDs\n"
"uint8[] ids\n"
"\n"
"# Configuration parameters\n"
"float64[] parameters\n"
"\n"
"# Configuration type\n"
"uint8 type\n"
"\n"
"uint8 TYPE_SET_PID = 1\n"
;
  }

  static const char* value(const ::dyret_common::ConfigureRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.configuration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigureRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dyret_common::ConfigureRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dyret_common::ConfigureRequest_<ContainerAllocator>& v)
  {
    s << indent << "configuration: ";
    s << std::endl;
    Printer< ::dyret_common::Configuration_<ContainerAllocator> >::stream(s, indent + "  ", v.configuration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYRET_COMMON_MESSAGE_CONFIGUREREQUEST_H
