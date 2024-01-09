# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from realm_msgs/Depthmap.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import realm_msgs.msg
import sensor_msgs.msg
import std_msgs.msg

class Depthmap(genpy.Message):
  _md5sum = "d0e44ab35357e17c520caeae09fad571"
  _type = "realm_msgs/Depthmap"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """##################################################
# A message containing basic REALM depthmap data #
##################################################

# (required) Header containing message meta data
std_msgs/Header header

# (required) Camera_model containing pinhole parameters of capturing cam
realm_msgs/Pinhole camera_model

# (required) Pose during acquisition
geometry_msgs/Pose pose

# (required) Depth information
sensor_msgs/Image data
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: realm_msgs/Pinhole
#####################################################
# A message containing general pinhole camera model #
#####################################################

# Image dimensions
std_msgs/UInt32 width
std_msgs/UInt32 height

# Principal point
std_msgs/Float64 cx
std_msgs/Float64 cy

# Focal length
std_msgs/Float64 fx
std_msgs/Float64 fy

# Radial distortion parameters
std_msgs/Float64 k1
std_msgs/Float64 k2
std_msgs/Float64 p1
std_msgs/Float64 p2
std_msgs/Float64 k3

================================================================================
MSG: std_msgs/UInt32
uint32 data
================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)
"""
  __slots__ = ['header','camera_model','pose','data']
  _slot_types = ['std_msgs/Header','realm_msgs/Pinhole','geometry_msgs/Pose','sensor_msgs/Image']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,camera_model,pose,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Depthmap, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.camera_model is None:
        self.camera_model = realm_msgs.msg.Pinhole()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.data is None:
        self.data = sensor_msgs.msg.Image()
    else:
      self.header = std_msgs.msg.Header()
      self.camera_model = realm_msgs.msg.Pinhole()
      self.pose = geometry_msgs.msg.Pose()
      self.data = sensor_msgs.msg.Image()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I16d3I().pack(_x.camera_model.width.data, _x.camera_model.height.data, _x.camera_model.cx.data, _x.camera_model.cy.data, _x.camera_model.fx.data, _x.camera_model.fy.data, _x.camera_model.k1.data, _x.camera_model.k2.data, _x.camera_model.p1.data, _x.camera_model.p2.data, _x.camera_model.k3.data, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.data.header.seq, _x.data.header.stamp.secs, _x.data.header.stamp.nsecs))
      _x = self.data.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.data.height, _x.data.width))
      _x = self.data.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.data.is_bigendian, _x.data.step))
      _x = self.data.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.camera_model is None:
        self.camera_model = realm_msgs.msg.Pinhole()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.data is None:
        self.data = sensor_msgs.msg.Image()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 148
      (_x.camera_model.width.data, _x.camera_model.height.data, _x.camera_model.cx.data, _x.camera_model.cy.data, _x.camera_model.fx.data, _x.camera_model.fy.data, _x.camera_model.k1.data, _x.camera_model.k2.data, _x.camera_model.p1.data, _x.camera_model.p2.data, _x.camera_model.k3.data, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.data.header.seq, _x.data.header.stamp.secs, _x.data.header.stamp.nsecs,) = _get_struct_2I16d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.data.height, _x.data.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.data.is_bigendian, _x.data.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I16d3I().pack(_x.camera_model.width.data, _x.camera_model.height.data, _x.camera_model.cx.data, _x.camera_model.cy.data, _x.camera_model.fx.data, _x.camera_model.fy.data, _x.camera_model.k1.data, _x.camera_model.k2.data, _x.camera_model.p1.data, _x.camera_model.p2.data, _x.camera_model.k3.data, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.data.header.seq, _x.data.header.stamp.secs, _x.data.header.stamp.nsecs))
      _x = self.data.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.data.height, _x.data.width))
      _x = self.data.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.data.is_bigendian, _x.data.step))
      _x = self.data.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.camera_model is None:
        self.camera_model = realm_msgs.msg.Pinhole()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.data is None:
        self.data = sensor_msgs.msg.Image()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 148
      (_x.camera_model.width.data, _x.camera_model.height.data, _x.camera_model.cx.data, _x.camera_model.cy.data, _x.camera_model.fx.data, _x.camera_model.fy.data, _x.camera_model.k1.data, _x.camera_model.k2.data, _x.camera_model.p1.data, _x.camera_model.p2.data, _x.camera_model.k3.data, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.data.header.seq, _x.data.header.stamp.secs, _x.data.header.stamp.nsecs,) = _get_struct_2I16d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.data.height, _x.data.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.data.is_bigendian, _x.data.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2I16d3I = None
def _get_struct_2I16d3I():
    global _struct_2I16d3I
    if _struct_2I16d3I is None:
        _struct_2I16d3I = struct.Struct("<2I16d3I")
    return _struct_2I16d3I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
