// Generated by gencpp from file realm_msgs/PointCloud.msg
// DO NOT EDIT!


#ifndef REALM_MSGS_MESSAGE_POINTCLOUD_H
#define REALM_MSGS_MESSAGE_POINTCLOUD_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/Image.h>

namespace realm_msgs
{
template <class ContainerAllocator>
struct PointCloud_
{
  typedef PointCloud_<ContainerAllocator> Type;

  PointCloud_()
    : header()
    , point_ids()
    , points()  {
    }
  PointCloud_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , point_ids(_alloc)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<uint32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint32_t>> _point_ids_type;
  _point_ids_type point_ids;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::realm_msgs::PointCloud_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realm_msgs::PointCloud_<ContainerAllocator> const> ConstPtr;

}; // struct PointCloud_

typedef ::realm_msgs::PointCloud_<std::allocator<void> > PointCloud;

typedef boost::shared_ptr< ::realm_msgs::PointCloud > PointCloudPtr;
typedef boost::shared_ptr< ::realm_msgs::PointCloud const> PointCloudConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realm_msgs::PointCloud_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realm_msgs::PointCloud_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::realm_msgs::PointCloud_<ContainerAllocator1> & lhs, const ::realm_msgs::PointCloud_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.point_ids == rhs.point_ids &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::realm_msgs::PointCloud_<ContainerAllocator1> & lhs, const ::realm_msgs::PointCloud_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace realm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::realm_msgs::PointCloud_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realm_msgs::PointCloud_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realm_msgs::PointCloud_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realm_msgs::PointCloud_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realm_msgs::PointCloud_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realm_msgs::PointCloud_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realm_msgs::PointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6084ccb52837e7a14d62eb0d8247527b";
  }

  static const char* value(const ::realm_msgs::PointCloud_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6084ccb52837e7a1ULL;
  static const uint64_t static_value2 = 0x4d62eb0d8247527bULL;
};

template<class ContainerAllocator>
struct DataType< ::realm_msgs::PointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realm_msgs/PointCloud";
  }

  static const char* value(const ::realm_msgs::PointCloud_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realm_msgs::PointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "######################################################\n"
"# A message containing basic REALM sparse cloud data #\n"
"######################################################\n"
"\n"
"# (required) Header containing message meta data\n"
"std_msgs/Header header\n"
"\n"
"# (required) Vector of unique point ids\n"
"uint32[] point_ids\n"
"\n"
"# (required) Data of the sparse cloud structured as cv::Mat with row(i) = x,y,z\n"
"sensor_msgs/Image points\n"
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
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
;
  }

  static const char* value(const ::realm_msgs::PointCloud_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realm_msgs::PointCloud_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.point_ids);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PointCloud_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realm_msgs::PointCloud_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realm_msgs::PointCloud_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "point_ids[]" << std::endl;
    for (size_t i = 0; i < v.point_ids.size(); ++i)
    {
      s << indent << "  point_ids[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.point_ids[i]);
    }
    s << indent << "points: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.points);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALM_MSGS_MESSAGE_POINTCLOUD_H
