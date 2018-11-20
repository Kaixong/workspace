// Generated by gencpp from file pololu_maestro_servo/pololu_maestro_servo_msg.msg
// DO NOT EDIT!


#ifndef POLOLU_MAESTRO_SERVO_MESSAGE_POLOLU_MAESTRO_SERVO_MSG_H
#define POLOLU_MAESTRO_SERVO_MESSAGE_POLOLU_MAESTRO_SERVO_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pololu_maestro_servo
{
template <class ContainerAllocator>
struct pololu_maestro_servo_msg_
{
  typedef pololu_maestro_servo_msg_<ContainerAllocator> Type;

  pololu_maestro_servo_msg_()
    : servo_data()  {
      servo_data.assign(0);
  }
  pololu_maestro_servo_msg_(const ContainerAllocator& _alloc)
    : servo_data()  {
  (void)_alloc;
      servo_data.assign(0);
  }



   typedef boost::array<int32_t, 6>  _servo_data_type;
  _servo_data_type servo_data;





  typedef boost::shared_ptr< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> const> ConstPtr;

}; // struct pololu_maestro_servo_msg_

typedef ::pololu_maestro_servo::pololu_maestro_servo_msg_<std::allocator<void> > pololu_maestro_servo_msg;

typedef boost::shared_ptr< ::pololu_maestro_servo::pololu_maestro_servo_msg > pololu_maestro_servo_msgPtr;
typedef boost::shared_ptr< ::pololu_maestro_servo::pololu_maestro_servo_msg const> pololu_maestro_servo_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pololu_maestro_servo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pololu_maestro_servo': ['/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c444c8787a637f584c57a88a50b5fa1";
  }

  static const char* value(const ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c444c8787a637f5ULL;
  static const uint64_t static_value2 = 0x84c57a88a50b5fa1ULL;
};

template<class ContainerAllocator>
struct DataType< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pololu_maestro_servo/pololu_maestro_servo_msg";
  }

  static const char* value(const ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[6] servo_data\n\
";
  }

  static const char* value(const ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.servo_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pololu_maestro_servo_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pololu_maestro_servo::pololu_maestro_servo_msg_<ContainerAllocator>& v)
  {
    s << indent << "servo_data[]" << std::endl;
    for (size_t i = 0; i < v.servo_data.size(); ++i)
    {
      s << indent << "  servo_data[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.servo_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POLOLU_MAESTRO_SERVO_MESSAGE_POLOLU_MAESTRO_SERVO_MSG_H