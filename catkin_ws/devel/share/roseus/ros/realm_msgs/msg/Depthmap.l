;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::Depthmap)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'Depthmap (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::DEPTHMAP")
  (make-package "REALM_MSGS::DEPTHMAP"))

(in-package "ROS")
;;//! \htmlinclude Depthmap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realm_msgs::Depthmap
  :super ros::object
  :slots (_header _camera_model _pose _data ))

(defmethod realm_msgs::Depthmap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:camera_model __camera_model) (instance realm_msgs::Pinhole :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:data __data) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _camera_model __camera_model)
   (setq _pose __pose)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:camera_model
   (&rest __camera_model)
   (if (keywordp (car __camera_model))
       (send* _camera_model __camera_model)
     (progn
       (if __camera_model (setq _camera_model (car __camera_model)))
       _camera_model)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; realm_msgs/Pinhole _camera_model
    (send _camera_model :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; sensor_msgs/Image _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; realm_msgs/Pinhole _camera_model
       (send _camera_model :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; sensor_msgs/Image _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; realm_msgs/Pinhole _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; sensor_msgs/Image _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get realm_msgs::Depthmap :md5sum-) "d0e44ab35357e17c520caeae09fad571")
(setf (get realm_msgs::Depthmap :datatype-) "realm_msgs/Depthmap")
(setf (get realm_msgs::Depthmap :definition-)
      "##################################################
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

")



(provide :realm_msgs/Depthmap "d0e44ab35357e17c520caeae09fad571")


