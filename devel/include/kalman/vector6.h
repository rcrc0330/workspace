// Generated by gencpp from file kalman/vector6.msg
// DO NOT EDIT!


#ifndef KALMAN_MESSAGE_VECTOR6_H
#define KALMAN_MESSAGE_VECTOR6_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kalman
{
template <class ContainerAllocator>
struct vector6_
{
  typedef vector6_<ContainerAllocator> Type;

  vector6_()
    : m1(0.0)
    , m2(0.0)
    , m3(0.0)
    , m4(0.0)
    , m5(0.0)
    , m6(0.0)  {
    }
  vector6_(const ContainerAllocator& _alloc)
    : m1(0.0)
    , m2(0.0)
    , m3(0.0)
    , m4(0.0)
    , m5(0.0)
    , m6(0.0)  {
  (void)_alloc;
    }



   typedef double _m1_type;
  _m1_type m1;

   typedef double _m2_type;
  _m2_type m2;

   typedef double _m3_type;
  _m3_type m3;

   typedef double _m4_type;
  _m4_type m4;

   typedef double _m5_type;
  _m5_type m5;

   typedef double _m6_type;
  _m6_type m6;





  typedef boost::shared_ptr< ::kalman::vector6_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kalman::vector6_<ContainerAllocator> const> ConstPtr;

}; // struct vector6_

typedef ::kalman::vector6_<std::allocator<void> > vector6;

typedef boost::shared_ptr< ::kalman::vector6 > vector6Ptr;
typedef boost::shared_ptr< ::kalman::vector6 const> vector6ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kalman::vector6_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kalman::vector6_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kalman

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'kalman': ['/home/rajat/rajat_ws/src/kalman/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kalman::vector6_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kalman::vector6_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kalman::vector6_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kalman::vector6_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kalman::vector6_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kalman::vector6_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kalman::vector6_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b0972f5571e47e4faf8f68d08a868fe1";
  }

  static const char* value(const ::kalman::vector6_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb0972f5571e47e4fULL;
  static const uint64_t static_value2 = 0xaf8f68d08a868fe1ULL;
};

template<class ContainerAllocator>
struct DataType< ::kalman::vector6_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kalman/vector6";
  }

  static const char* value(const ::kalman::vector6_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kalman::vector6_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 m1\n\
float64 m2\n\
float64 m3\n\
float64 m4\n\
float64 m5\n\
float64 m6\n\
";
  }

  static const char* value(const ::kalman::vector6_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kalman::vector6_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.m1);
      stream.next(m.m2);
      stream.next(m.m3);
      stream.next(m.m4);
      stream.next(m.m5);
      stream.next(m.m6);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct vector6_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kalman::vector6_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kalman::vector6_<ContainerAllocator>& v)
  {
    s << indent << "m1: ";
    Printer<double>::stream(s, indent + "  ", v.m1);
    s << indent << "m2: ";
    Printer<double>::stream(s, indent + "  ", v.m2);
    s << indent << "m3: ";
    Printer<double>::stream(s, indent + "  ", v.m3);
    s << indent << "m4: ";
    Printer<double>::stream(s, indent + "  ", v.m4);
    s << indent << "m5: ";
    Printer<double>::stream(s, indent + "  ", v.m5);
    s << indent << "m6: ";
    Printer<double>::stream(s, indent + "  ", v.m6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KALMAN_MESSAGE_VECTOR6_H
