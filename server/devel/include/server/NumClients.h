// Generated by gencpp from file server/NumClients.msg
// DO NOT EDIT!


#ifndef SERVER_MESSAGE_NUMCLIENTS_H
#define SERVER_MESSAGE_NUMCLIENTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace server
{
template <class ContainerAllocator>
struct NumClients_
{
  typedef NumClients_<ContainerAllocator> Type;

  NumClients_()
    : header()
    , clientIds()  {
    }
  NumClients_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , clientIds(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _clientIds_type;
  _clientIds_type clientIds;




  typedef boost::shared_ptr< ::server::NumClients_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::server::NumClients_<ContainerAllocator> const> ConstPtr;

}; // struct NumClients_

typedef ::server::NumClients_<std::allocator<void> > NumClients;

typedef boost::shared_ptr< ::server::NumClients > NumClientsPtr;
typedef boost::shared_ptr< ::server::NumClients const> NumClientsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::server::NumClients_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::server::NumClients_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'server': ['/home/evan/Code/cloud-robotics/server/src/server/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::server::NumClients_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::server::NumClients_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::server::NumClients_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::server::NumClients_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::server::NumClients_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::server::NumClients_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::server::NumClients_<ContainerAllocator> >
{
  static const char* value()
  {
    return "41f501fdc974f486e8d56df095ccd1de";
  }

  static const char* value(const ::server::NumClients_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x41f501fdc974f486ULL;
  static const uint64_t static_value2 = 0xe8d56df095ccd1deULL;
};

template<class ContainerAllocator>
struct DataType< ::server::NumClients_<ContainerAllocator> >
{
  static const char* value()
  {
    return "server/NumClients";
  }

  static const char* value(const ::server::NumClients_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::server::NumClients_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int8[] clientIds\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::server::NumClients_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::server::NumClients_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.clientIds);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct NumClients_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::server::NumClients_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::server::NumClients_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "clientIds[]" << std::endl;
    for (size_t i = 0; i < v.clientIds.size(); ++i)
    {
      s << indent << "  clientIds[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.clientIds[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVER_MESSAGE_NUMCLIENTS_H