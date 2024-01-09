; Auto-generated. Do not edit!


(cl:in-package realm_msgs-msg)


;//! \htmlinclude Depthmap.msg.html

(cl:defclass <Depthmap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type realm_msgs-msg:Pinhole
    :initform (cl:make-instance 'realm_msgs-msg:Pinhole))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (data
    :reader data
    :initarg :data
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass Depthmap (<Depthmap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Depthmap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Depthmap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realm_msgs-msg:<Depthmap> is deprecated: use realm_msgs-msg:Depthmap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Depthmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:header-val is deprecated.  Use realm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <Depthmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:camera_model-val is deprecated.  Use realm_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Depthmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:pose-val is deprecated.  Use realm_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Depthmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:data-val is deprecated.  Use realm_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Depthmap>) ostream)
  "Serializes a message object of type '<Depthmap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Depthmap>) istream)
  "Deserializes a message object of type '<Depthmap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Depthmap>)))
  "Returns string type for a message object of type '<Depthmap>"
  "realm_msgs/Depthmap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Depthmap)))
  "Returns string type for a message object of type 'Depthmap"
  "realm_msgs/Depthmap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Depthmap>)))
  "Returns md5sum for a message object of type '<Depthmap>"
  "d0e44ab35357e17c520caeae09fad571")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Depthmap)))
  "Returns md5sum for a message object of type 'Depthmap"
  "d0e44ab35357e17c520caeae09fad571")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Depthmap>)))
  "Returns full string definition for message of type '<Depthmap>"
  (cl:format cl:nil "##################################################~%# A message containing basic REALM depthmap data #~%##################################################~%~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Camera_model containing pinhole parameters of capturing cam~%realm_msgs/Pinhole camera_model~%~%# (required) Pose during acquisition~%geometry_msgs/Pose pose~%~%# (required) Depth information~%sensor_msgs/Image data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: realm_msgs/Pinhole~%#####################################################~%# A message containing general pinhole camera model #~%#####################################################~%~%# Image dimensions~%std_msgs/UInt32 width~%std_msgs/UInt32 height~%~%# Principal point~%std_msgs/Float64 cx~%std_msgs/Float64 cy~%~%# Focal length~%std_msgs/Float64 fx~%std_msgs/Float64 fy~%~%# Radial distortion parameters~%std_msgs/Float64 k1~%std_msgs/Float64 k2~%std_msgs/Float64 p1~%std_msgs/Float64 p2~%std_msgs/Float64 k3~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Depthmap)))
  "Returns full string definition for message of type 'Depthmap"
  (cl:format cl:nil "##################################################~%# A message containing basic REALM depthmap data #~%##################################################~%~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Camera_model containing pinhole parameters of capturing cam~%realm_msgs/Pinhole camera_model~%~%# (required) Pose during acquisition~%geometry_msgs/Pose pose~%~%# (required) Depth information~%sensor_msgs/Image data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: realm_msgs/Pinhole~%#####################################################~%# A message containing general pinhole camera model #~%#####################################################~%~%# Image dimensions~%std_msgs/UInt32 width~%std_msgs/UInt32 height~%~%# Principal point~%std_msgs/Float64 cx~%std_msgs/Float64 cy~%~%# Focal length~%std_msgs/Float64 fx~%std_msgs/Float64 fy~%~%# Radial distortion parameters~%std_msgs/Float64 k1~%std_msgs/Float64 k2~%std_msgs/Float64 p1~%std_msgs/Float64 p2~%std_msgs/Float64 k3~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Depthmap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Depthmap>))
  "Converts a ROS message object to a list"
  (cl:list 'Depthmap
    (cl:cons ':header (header msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':data (data msg))
))
