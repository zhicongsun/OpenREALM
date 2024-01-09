;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::Frame)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'Frame (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::FRAME")
  (make-package "REALM_MSGS::FRAME"))

(in-package "ROS")
;;//! \htmlinclude Frame.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realm_msgs::Frame
  :super ros::object
  :slots (_header _camera_id _stage_id _timestamp _imagedata _camera_model _orientation _gpsdata _sparse_cloud _depthmap _surface_model _orthophoto _heading _visual_pose _georeference _do_reset _has_accurate_pose _is_keyframe _is_georeferenced _is_surface_elevated ))

(defmethod realm_msgs::Frame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:camera_id __camera_id) (instance std_msgs::String :init))
    ((:stage_id __stage_id) (instance std_msgs::UInt32 :init))
    ((:timestamp __timestamp) (instance std_msgs::UInt64 :init))
    ((:imagedata __imagedata) (instance sensor_msgs::CompressedImage :init))
    ((:camera_model __camera_model) (instance realm_msgs::Pinhole :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:gpsdata __gpsdata) (instance sensor_msgs::NavSatFix :init))
    ((:sparse_cloud __sparse_cloud) (instance realm_msgs::PointCloud :init))
    ((:depthmap __depthmap) (instance realm_msgs::Depthmap :init))
    ((:surface_model __surface_model) (instance realm_msgs::CvGridMap :init))
    ((:orthophoto __orthophoto) (instance realm_msgs::CvGridMap :init))
    ((:heading __heading) (instance std_msgs::Float32 :init))
    ((:visual_pose __visual_pose) (instance geometry_msgs::Pose :init))
    ((:georeference __georeference) (instance realm_msgs::Georeference :init))
    ((:do_reset __do_reset) (instance std_msgs::Bool :init))
    ((:has_accurate_pose __has_accurate_pose) (instance std_msgs::Bool :init))
    ((:is_keyframe __is_keyframe) (instance std_msgs::Bool :init))
    ((:is_georeferenced __is_georeferenced) (instance std_msgs::Bool :init))
    ((:is_surface_elevated __is_surface_elevated) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _camera_id __camera_id)
   (setq _stage_id __stage_id)
   (setq _timestamp __timestamp)
   (setq _imagedata __imagedata)
   (setq _camera_model __camera_model)
   (setq _orientation __orientation)
   (setq _gpsdata __gpsdata)
   (setq _sparse_cloud __sparse_cloud)
   (setq _depthmap __depthmap)
   (setq _surface_model __surface_model)
   (setq _orthophoto __orthophoto)
   (setq _heading __heading)
   (setq _visual_pose __visual_pose)
   (setq _georeference __georeference)
   (setq _do_reset __do_reset)
   (setq _has_accurate_pose __has_accurate_pose)
   (setq _is_keyframe __is_keyframe)
   (setq _is_georeferenced __is_georeferenced)
   (setq _is_surface_elevated __is_surface_elevated)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:camera_id
   (&rest __camera_id)
   (if (keywordp (car __camera_id))
       (send* _camera_id __camera_id)
     (progn
       (if __camera_id (setq _camera_id (car __camera_id)))
       _camera_id)))
  (:stage_id
   (&rest __stage_id)
   (if (keywordp (car __stage_id))
       (send* _stage_id __stage_id)
     (progn
       (if __stage_id (setq _stage_id (car __stage_id)))
       _stage_id)))
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:imagedata
   (&rest __imagedata)
   (if (keywordp (car __imagedata))
       (send* _imagedata __imagedata)
     (progn
       (if __imagedata (setq _imagedata (car __imagedata)))
       _imagedata)))
  (:camera_model
   (&rest __camera_model)
   (if (keywordp (car __camera_model))
       (send* _camera_model __camera_model)
     (progn
       (if __camera_model (setq _camera_model (car __camera_model)))
       _camera_model)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:gpsdata
   (&rest __gpsdata)
   (if (keywordp (car __gpsdata))
       (send* _gpsdata __gpsdata)
     (progn
       (if __gpsdata (setq _gpsdata (car __gpsdata)))
       _gpsdata)))
  (:sparse_cloud
   (&rest __sparse_cloud)
   (if (keywordp (car __sparse_cloud))
       (send* _sparse_cloud __sparse_cloud)
     (progn
       (if __sparse_cloud (setq _sparse_cloud (car __sparse_cloud)))
       _sparse_cloud)))
  (:depthmap
   (&rest __depthmap)
   (if (keywordp (car __depthmap))
       (send* _depthmap __depthmap)
     (progn
       (if __depthmap (setq _depthmap (car __depthmap)))
       _depthmap)))
  (:surface_model
   (&rest __surface_model)
   (if (keywordp (car __surface_model))
       (send* _surface_model __surface_model)
     (progn
       (if __surface_model (setq _surface_model (car __surface_model)))
       _surface_model)))
  (:orthophoto
   (&rest __orthophoto)
   (if (keywordp (car __orthophoto))
       (send* _orthophoto __orthophoto)
     (progn
       (if __orthophoto (setq _orthophoto (car __orthophoto)))
       _orthophoto)))
  (:heading
   (&rest __heading)
   (if (keywordp (car __heading))
       (send* _heading __heading)
     (progn
       (if __heading (setq _heading (car __heading)))
       _heading)))
  (:visual_pose
   (&rest __visual_pose)
   (if (keywordp (car __visual_pose))
       (send* _visual_pose __visual_pose)
     (progn
       (if __visual_pose (setq _visual_pose (car __visual_pose)))
       _visual_pose)))
  (:georeference
   (&rest __georeference)
   (if (keywordp (car __georeference))
       (send* _georeference __georeference)
     (progn
       (if __georeference (setq _georeference (car __georeference)))
       _georeference)))
  (:do_reset
   (&rest __do_reset)
   (if (keywordp (car __do_reset))
       (send* _do_reset __do_reset)
     (progn
       (if __do_reset (setq _do_reset (car __do_reset)))
       _do_reset)))
  (:has_accurate_pose
   (&rest __has_accurate_pose)
   (if (keywordp (car __has_accurate_pose))
       (send* _has_accurate_pose __has_accurate_pose)
     (progn
       (if __has_accurate_pose (setq _has_accurate_pose (car __has_accurate_pose)))
       _has_accurate_pose)))
  (:is_keyframe
   (&rest __is_keyframe)
   (if (keywordp (car __is_keyframe))
       (send* _is_keyframe __is_keyframe)
     (progn
       (if __is_keyframe (setq _is_keyframe (car __is_keyframe)))
       _is_keyframe)))
  (:is_georeferenced
   (&rest __is_georeferenced)
   (if (keywordp (car __is_georeferenced))
       (send* _is_georeferenced __is_georeferenced)
     (progn
       (if __is_georeferenced (setq _is_georeferenced (car __is_georeferenced)))
       _is_georeferenced)))
  (:is_surface_elevated
   (&rest __is_surface_elevated)
   (if (keywordp (car __is_surface_elevated))
       (send* _is_surface_elevated __is_surface_elevated)
     (progn
       (if __is_surface_elevated (setq _is_surface_elevated (car __is_surface_elevated)))
       _is_surface_elevated)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String _camera_id
    (send _camera_id :serialization-length)
    ;; std_msgs/UInt32 _stage_id
    (send _stage_id :serialization-length)
    ;; std_msgs/UInt64 _timestamp
    (send _timestamp :serialization-length)
    ;; sensor_msgs/CompressedImage _imagedata
    (send _imagedata :serialization-length)
    ;; realm_msgs/Pinhole _camera_model
    (send _camera_model :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; sensor_msgs/NavSatFix _gpsdata
    (send _gpsdata :serialization-length)
    ;; realm_msgs/PointCloud _sparse_cloud
    (send _sparse_cloud :serialization-length)
    ;; realm_msgs/Depthmap _depthmap
    (send _depthmap :serialization-length)
    ;; realm_msgs/CvGridMap _surface_model
    (send _surface_model :serialization-length)
    ;; realm_msgs/CvGridMap _orthophoto
    (send _orthophoto :serialization-length)
    ;; std_msgs/Float32 _heading
    (send _heading :serialization-length)
    ;; geometry_msgs/Pose _visual_pose
    (send _visual_pose :serialization-length)
    ;; realm_msgs/Georeference _georeference
    (send _georeference :serialization-length)
    ;; std_msgs/Bool _do_reset
    (send _do_reset :serialization-length)
    ;; std_msgs/Bool _has_accurate_pose
    (send _has_accurate_pose :serialization-length)
    ;; std_msgs/Bool _is_keyframe
    (send _is_keyframe :serialization-length)
    ;; std_msgs/Bool _is_georeferenced
    (send _is_georeferenced :serialization-length)
    ;; std_msgs/Bool _is_surface_elevated
    (send _is_surface_elevated :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String _camera_id
       (send _camera_id :serialize s)
     ;; std_msgs/UInt32 _stage_id
       (send _stage_id :serialize s)
     ;; std_msgs/UInt64 _timestamp
       (send _timestamp :serialize s)
     ;; sensor_msgs/CompressedImage _imagedata
       (send _imagedata :serialize s)
     ;; realm_msgs/Pinhole _camera_model
       (send _camera_model :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; sensor_msgs/NavSatFix _gpsdata
       (send _gpsdata :serialize s)
     ;; realm_msgs/PointCloud _sparse_cloud
       (send _sparse_cloud :serialize s)
     ;; realm_msgs/Depthmap _depthmap
       (send _depthmap :serialize s)
     ;; realm_msgs/CvGridMap _surface_model
       (send _surface_model :serialize s)
     ;; realm_msgs/CvGridMap _orthophoto
       (send _orthophoto :serialize s)
     ;; std_msgs/Float32 _heading
       (send _heading :serialize s)
     ;; geometry_msgs/Pose _visual_pose
       (send _visual_pose :serialize s)
     ;; realm_msgs/Georeference _georeference
       (send _georeference :serialize s)
     ;; std_msgs/Bool _do_reset
       (send _do_reset :serialize s)
     ;; std_msgs/Bool _has_accurate_pose
       (send _has_accurate_pose :serialize s)
     ;; std_msgs/Bool _is_keyframe
       (send _is_keyframe :serialize s)
     ;; std_msgs/Bool _is_georeferenced
       (send _is_georeferenced :serialize s)
     ;; std_msgs/Bool _is_surface_elevated
       (send _is_surface_elevated :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String _camera_id
     (send _camera_id :deserialize buf ptr-) (incf ptr- (send _camera_id :serialization-length))
   ;; std_msgs/UInt32 _stage_id
     (send _stage_id :deserialize buf ptr-) (incf ptr- (send _stage_id :serialization-length))
   ;; std_msgs/UInt64 _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; sensor_msgs/CompressedImage _imagedata
     (send _imagedata :deserialize buf ptr-) (incf ptr- (send _imagedata :serialization-length))
   ;; realm_msgs/Pinhole _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; sensor_msgs/NavSatFix _gpsdata
     (send _gpsdata :deserialize buf ptr-) (incf ptr- (send _gpsdata :serialization-length))
   ;; realm_msgs/PointCloud _sparse_cloud
     (send _sparse_cloud :deserialize buf ptr-) (incf ptr- (send _sparse_cloud :serialization-length))
   ;; realm_msgs/Depthmap _depthmap
     (send _depthmap :deserialize buf ptr-) (incf ptr- (send _depthmap :serialization-length))
   ;; realm_msgs/CvGridMap _surface_model
     (send _surface_model :deserialize buf ptr-) (incf ptr- (send _surface_model :serialization-length))
   ;; realm_msgs/CvGridMap _orthophoto
     (send _orthophoto :deserialize buf ptr-) (incf ptr- (send _orthophoto :serialization-length))
   ;; std_msgs/Float32 _heading
     (send _heading :deserialize buf ptr-) (incf ptr- (send _heading :serialization-length))
   ;; geometry_msgs/Pose _visual_pose
     (send _visual_pose :deserialize buf ptr-) (incf ptr- (send _visual_pose :serialization-length))
   ;; realm_msgs/Georeference _georeference
     (send _georeference :deserialize buf ptr-) (incf ptr- (send _georeference :serialization-length))
   ;; std_msgs/Bool _do_reset
     (send _do_reset :deserialize buf ptr-) (incf ptr- (send _do_reset :serialization-length))
   ;; std_msgs/Bool _has_accurate_pose
     (send _has_accurate_pose :deserialize buf ptr-) (incf ptr- (send _has_accurate_pose :serialization-length))
   ;; std_msgs/Bool _is_keyframe
     (send _is_keyframe :deserialize buf ptr-) (incf ptr- (send _is_keyframe :serialization-length))
   ;; std_msgs/Bool _is_georeferenced
     (send _is_georeferenced :deserialize buf ptr-) (incf ptr- (send _is_georeferenced :serialization-length))
   ;; std_msgs/Bool _is_surface_elevated
     (send _is_surface_elevated :deserialize buf ptr-) (incf ptr- (send _is_surface_elevated :serialization-length))
   ;;
   self)
  )

(setf (get realm_msgs::Frame :md5sum-) "5c5634361f210a95be3b4183d672f7a7")
(setf (get realm_msgs::Frame :datatype-) "realm_msgs/Frame")
(setf (get realm_msgs::Frame :definition-)
      "#######################################################
# A message containing basic REALM frame informations #
#######################################################

##################### Sensor data #####################
# (required) Header containing message meta data
std_msgs/Header header

# (required) Unique name/id of the acquiring camera
std_msgs/String camera_id

# (required) Frame id which is constant over the whole stage processing. Should only be set once
std_msgs/UInt32 stage_id

# (required) Timestamp of the acquisition. Is not the same as ros message timestamp!
std_msgs/UInt64 timestamp

# (required) Imagedata containing the compressed camera data
sensor_msgs/CompressedImage imagedata

# (required) Camera_model containing pinhole parameters of capturing cam
realm_msgs/Pinhole camera_model

# (required) Camera orientation as quaternion
geometry_msgs/Quaternion orientation

# (required) Gnss data containing geodetic informations of the image
sensor_msgs/NavSatFix gpsdata

# (optional) Point cloud of the observed surface
realm_msgs/PointCloud sparse_cloud

# (optional) Depthmap of the observed scene
realm_msgs/Depthmap depthmap

# (optional) Surface model as grid map of the frame projection
realm_msgs/CvGridMap surface_model

# (optional) Orthophoto of the frame
realm_msgs/CvGridMap orthophoto

# (optional) Heading in Degree, required if mapping on GNSS only
std_msgs/Float32 heading

# (optional) Visual pose of the camera in local coordinate frame, required e.g. for georeference updates
geometry_msgs/Pose visual_pose

# (optional) Transformation from the visual to the geographic world
realm_msgs/Georeference georeference

######################## Flags ########################
# Reset flag: set true, if following stage should be resetted
std_msgs/Bool do_reset

# Accurate pose flag: set true, if pose is suited for dense reconstruction
std_msgs/Bool has_accurate_pose

# Is key frame flag: set true, if frame was marked as keyframe
std_msgs/Bool is_keyframe

# Is georeferenced flag: set true, if frame was successfully georeferenced
std_msgs/Bool is_georeferenced

# Flag to check if surface was computed with 2.5D elevation or not
std_msgs/Bool is_surface_elevated
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
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/UInt32
uint32 data
================================================================================
MSG: std_msgs/UInt64
uint64 data
================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

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
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

================================================================================
MSG: realm_msgs/PointCloud
######################################################
# A message containing basic REALM sparse cloud data #
######################################################

# (required) Header containing message meta data
std_msgs/Header header

# (required) Vector of unique point ids
uint32[] point_ids

# (required) Data of the sparse cloud structured as cv::Mat with row(i) = x,y,z
sensor_msgs/Image points
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

================================================================================
MSG: realm_msgs/Depthmap
##################################################
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
MSG: realm_msgs/CvGridMap
# Header for time and frame
Header header

# CvGridMap uni resolution in x-/y-dir
float64 resolution

# CvGridMap position of roi
geometry_msgs/Point pos

# CvGridMap length of roi in x
float64 length_x

# CvGridMap length of roi in y
float64 length_y

# CvGridMap layer names
string[] layers

# CvGridMap layer data
sensor_msgs/Image[] data

================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: realm_msgs/Georeference
#####################################################
# A message containing georeference informations    #
#####################################################

# Following message is basically a similarity transformation

geometry_msgs/Transform transform
std_msgs/Float64[] scale

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :realm_msgs/Frame "5c5634361f210a95be3b4183d672f7a7")


