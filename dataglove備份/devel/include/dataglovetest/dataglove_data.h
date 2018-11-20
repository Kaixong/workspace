// Generated by gencpp from file dataglovetest/dataglove_data.msg
// DO NOT EDIT!


#ifndef DATAGLOVETEST_MESSAGE_DATAGLOVE_DATA_H
#define DATAGLOVETEST_MESSAGE_DATAGLOVE_DATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dataglovetest
{
template <class ContainerAllocator>
struct dataglove_data_
{
  typedef dataglove_data_<ContainerAllocator> Type;

  dataglove_data_()
    : LT(0.0)
    , LP(0.0)
    , LM(0.0)
    , LR(0.0)
    , LL(0.0)
    , RT(0.0)
    , RP(0.0)
    , RM(0.0)
    , RR(0.0)
    , RL(0.0)  {
    }
  dataglove_data_(const ContainerAllocator& _alloc)
    : LT(0.0)
    , LP(0.0)
    , LM(0.0)
    , LR(0.0)
    , LL(0.0)
    , RT(0.0)
    , RP(0.0)
    , RM(0.0)
    , RR(0.0)
    , RL(0.0)  {
  (void)_alloc;
    }



   typedef double _LT_type;
  _LT_type LT;

   typedef double _LP_type;
  _LP_type LP;

   typedef double _LM_type;
  _LM_type LM;

   typedef double _LR_type;
  _LR_type LR;

   typedef double _LL_type;
  _LL_type LL;

   typedef double _RT_type;
  _RT_type RT;

   typedef double _RP_type;
  _RP_type RP;

   typedef double _RM_type;
  _RM_type RM;

   typedef double _RR_type;
  _RR_type RR;

   typedef double _RL_type;
  _RL_type RL;





  typedef boost::shared_ptr< ::dataglovetest::dataglove_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dataglovetest::dataglove_data_<ContainerAllocator> const> ConstPtr;

}; // struct dataglove_data_

typedef ::dataglovetest::dataglove_data_<std::allocator<void> > dataglove_data;

typedef boost::shared_ptr< ::dataglovetest::dataglove_data > dataglove_dataPtr;
typedef boost::shared_ptr< ::dataglovetest::dataglove_data const> dataglove_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dataglovetest::dataglove_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dataglovetest::dataglove_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dataglovetest

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dataglovetest': ['/home/kumakai/workspace/dataglove/src/dataglovetest/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dataglovetest::dataglove_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dataglovetest::dataglove_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dataglovetest::dataglove_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dataglovetest::dataglove_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dataglovetest::dataglove_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dataglovetest::dataglove_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dataglovetest::dataglove_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "31ba650ac7c0f1ef76e6e92486297e70";
  }

  static const char* value(const ::dataglovetest::dataglove_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x31ba650ac7c0f1efULL;
  static const uint64_t static_value2 = 0x76e6e92486297e70ULL;
};

template<class ContainerAllocator>
struct DataType< ::dataglovetest::dataglove_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dataglovetest/dataglove_data";
  }

  static const char* value(const ::dataglovetest::dataglove_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dataglovetest::dataglove_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float64 LT\n\
float64 LP\n\
float64 LM\n\
float64 LR\n\
float64 LL\n\
float64 RT\n\
float64 RP\n\
float64 RM\n\
float64 RR\n\
float64 RL\n\
";
  }

  static const char* value(const ::dataglovetest::dataglove_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dataglovetest::dataglove_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.LT);
      stream.next(m.LP);
      stream.next(m.LM);
      stream.next(m.LR);
      stream.next(m.LL);
      stream.next(m.RT);
      stream.next(m.RP);
      stream.next(m.RM);
      stream.next(m.RR);
      stream.next(m.RL);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct dataglove_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dataglovetest::dataglove_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dataglovetest::dataglove_data_<ContainerAllocator>& v)
  {
    s << indent << "LT: ";
    Printer<double>::stream(s, indent + "  ", v.LT);
    s << indent << "LP: ";
    Printer<double>::stream(s, indent + "  ", v.LP);
    s << indent << "LM: ";
    Printer<double>::stream(s, indent + "  ", v.LM);
    s << indent << "LR: ";
    Printer<double>::stream(s, indent + "  ", v.LR);
    s << indent << "LL: ";
    Printer<double>::stream(s, indent + "  ", v.LL);
    s << indent << "RT: ";
    Printer<double>::stream(s, indent + "  ", v.RT);
    s << indent << "RP: ";
    Printer<double>::stream(s, indent + "  ", v.RP);
    s << indent << "RM: ";
    Printer<double>::stream(s, indent + "  ", v.RM);
    s << indent << "RR: ";
    Printer<double>::stream(s, indent + "  ", v.RR);
    s << indent << "RL: ";
    Printer<double>::stream(s, indent + "  ", v.RL);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DATAGLOVETEST_MESSAGE_DATAGLOVE_DATA_H
