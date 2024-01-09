; Auto-generated. Do not edit!


(cl:in-package realm_msgs-msg)


;//! \htmlinclude Frame.msg.html

(cl:defclass <Frame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (camera_id
    :reader camera_id
    :initarg :camera_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (stage_id
    :reader stage_id
    :initarg :stage_id
    :type std_msgs-msg:UInt32
    :initform (cl:make-instance 'std_msgs-msg:UInt32))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type std_msgs-msg:UInt64
    :initform (cl:make-instance 'std_msgs-msg:UInt64))
   (imagedata
    :reader imagedata
    :initarg :imagedata
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type realm_msgs-msg:Pinhole
    :initform (cl:make-instance 'realm_msgs-msg:Pinhole))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (gpsdata
    :reader gpsdata
    :initarg :gpsdata
    :type sensor_msgs-msg:NavSatFix
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatFix))
   (sparse_cloud
    :reader sparse_cloud
    :initarg :sparse_cloud
    :type realm_msgs-msg:PointCloud
    :initform (cl:make-instance 'realm_msgs-msg:PointCloud))
   (depthmap
    :reader depthmap
    :initarg :depthmap
    :type realm_msgs-msg:Depthmap
    :initform (cl:make-instance 'realm_msgs-msg:Depthmap))
   (surface_model
    :reader surface_model
    :initarg :surface_model
    :type realm_msgs-msg:CvGridMap
    :initform (cl:make-instance 'realm_msgs-msg:CvGridMap))
   (orthophoto
    :reader orthophoto
    :initarg :orthophoto
    :type realm_msgs-msg:CvGridMap
    :initform (cl:make-instance 'realm_msgs-msg:CvGridMap))
   (heading
    :reader heading
    :initarg :heading
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (visual_pose
    :reader visual_pose
    :initarg :visual_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (georeference
    :reader georeference
    :initarg :georeference
    :type realm_msgs-msg:Georeference
    :initform (cl:make-instance 'realm_msgs-msg:Georeference))
   (do_reset
    :reader do_reset
    :initarg :do_reset
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (has_accurate_pose
    :reader has_accurate_pose
    :initarg :has_accurate_pose
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (is_keyframe
    :reader is_keyframe
    :initarg :is_keyframe
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (is_georeferenced
    :reader is_georeferenced
    :initarg :is_georeferenced
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (is_surface_elevated
    :reader is_surface_elevated
    :initarg :is_surface_elevated
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Frame (<Frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realm_msgs-msg:<Frame> is deprecated: use realm_msgs-msg:Frame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:header-val is deprecated.  Use realm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:camera_id-val is deprecated.  Use realm_msgs-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'stage_id-val :lambda-list '(m))
(cl:defmethod stage_id-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:stage_id-val is deprecated.  Use realm_msgs-msg:stage_id instead.")
  (stage_id m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:timestamp-val is deprecated.  Use realm_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'imagedata-val :lambda-list '(m))
(cl:defmethod imagedata-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:imagedata-val is deprecated.  Use realm_msgs-msg:imagedata instead.")
  (imagedata m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:camera_model-val is deprecated.  Use realm_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:orientation-val is deprecated.  Use realm_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'gpsdata-val :lambda-list '(m))
(cl:defmethod gpsdata-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:gpsdata-val is deprecated.  Use realm_msgs-msg:gpsdata instead.")
  (gpsdata m))

(cl:ensure-generic-function 'sparse_cloud-val :lambda-list '(m))
(cl:defmethod sparse_cloud-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:sparse_cloud-val is deprecated.  Use realm_msgs-msg:sparse_cloud instead.")
  (sparse_cloud m))

(cl:ensure-generic-function 'depthmap-val :lambda-list '(m))
(cl:defmethod depthmap-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:depthmap-val is deprecated.  Use realm_msgs-msg:depthmap instead.")
  (depthmap m))

(cl:ensure-generic-function 'surface_model-val :lambda-list '(m))
(cl:defmethod surface_model-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:surface_model-val is deprecated.  Use realm_msgs-msg:surface_model instead.")
  (surface_model m))

(cl:ensure-generic-function 'orthophoto-val :lambda-list '(m))
(cl:defmethod orthophoto-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:orthophoto-val is deprecated.  Use realm_msgs-msg:orthophoto instead.")
  (orthophoto m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:heading-val is deprecated.  Use realm_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'visual_pose-val :lambda-list '(m))
(cl:defmethod visual_pose-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:visual_pose-val is deprecated.  Use realm_msgs-msg:visual_pose instead.")
  (visual_pose m))

(cl:ensure-generic-function 'georeference-val :lambda-list '(m))
(cl:defmethod georeference-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:georeference-val is deprecated.  Use realm_msgs-msg:georeference instead.")
  (georeference m))

(cl:ensure-generic-function 'do_reset-val :lambda-list '(m))
(cl:defmethod do_reset-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:do_reset-val is deprecated.  Use realm_msgs-msg:do_reset instead.")
  (do_reset m))

(cl:ensure-generic-function 'has_accurate_pose-val :lambda-list '(m))
(cl:defmethod has_accurate_pose-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:has_accurate_pose-val is deprecated.  Use realm_msgs-msg:has_accurate_pose instead.")
  (has_accurate_pose m))

(cl:ensure-generic-function 'is_keyframe-val :lambda-list '(m))
(cl:defmethod is_keyframe-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:is_keyframe-val is deprecated.  Use realm_msgs-msg:is_keyframe instead.")
  (is_keyframe m))

(cl:ensure-generic-function 'is_georeferenced-val :lambda-list '(m))
(cl:defmethod is_georeferenced-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:is_georeferenced-val is deprecated.  Use realm_msgs-msg:is_georeferenced instead.")
  (is_georeferenced m))

(cl:ensure-generic-function 'is_surface_elevated-val :lambda-list '(m))
(cl:defmethod is_surface_elevated-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:is_surface_elevated-val is deprecated.  Use realm_msgs-msg:is_surface_elevated instead.")
  (is_surface_elevated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frame>) ostream)
  "Serializes a message object of type '<Frame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stage_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imagedata) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsdata) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sparse_cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depthmap) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'surface_model) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orthophoto) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heading) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'visual_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'georeference) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'do_reset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'has_accurate_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'is_keyframe) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'is_georeferenced) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'is_surface_elevated) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frame>) istream)
  "Deserializes a message object of type '<Frame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stage_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imagedata) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsdata) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sparse_cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depthmap) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'surface_model) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orthophoto) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heading) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'visual_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'georeference) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'do_reset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'has_accurate_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'is_keyframe) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'is_georeferenced) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'is_surface_elevated) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frame>)))
  "Returns string type for a message object of type '<Frame>"
  "realm_msgs/Frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frame)))
  "Returns string type for a message object of type 'Frame"
  "realm_msgs/Frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frame>)))
  "Returns md5sum for a message object of type '<Frame>"
  "5c5634361f210a95be3b4183d672f7a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frame)))
  "Returns md5sum for a message object of type 'Frame"
  "5c5634361f210a95be3b4183d672f7a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frame>)))
  "Returns full string definition for message of type '<Frame>"
  (cl:format cl:nil "#######################################################~%# A message containing basic REALM frame informations #~%#######################################################~%~%##################### Sensor data #####################~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Unique name/id of the acquiring camera~%std_msgs/String camera_id~%~%# (required) Frame id which is constant over the whole stage processing. Should only be set once~%std_msgs/UInt32 stage_id~%~%# (required) Timestamp of the acquisition. Is not the same as ros message timestamp!~%std_msgs/UInt64 timestamp~%~%# (required) Imagedata containing the compressed camera data~%sensor_msgs/CompressedImage imagedata~%~%# (required) Camera_model containing pinhole parameters of capturing cam~%realm_msgs/Pinhole camera_model~%~%# (required) Camera orientation as quaternion~%geometry_msgs/Quaternion orientation~%~%# (required) Gnss data containing geodetic informations of the image~%sensor_msgs/NavSatFix gpsdata~%~%# (optional) Point cloud of the observed surface~%realm_msgs/PointCloud sparse_cloud~%~%# (optional) Depthmap of the observed scene~%realm_msgs/Depthmap depthmap~%~%# (optional) Surface model as grid map of the frame projection~%realm_msgs/CvGridMap surface_model~%~%# (optional) Orthophoto of the frame~%realm_msgs/CvGridMap orthophoto~%~%# (optional) Heading in Degree, required if mapping on GNSS only~%std_msgs/Float32 heading~%~%# (optional) Visual pose of the camera in local coordinate frame, required e.g. for georeference updates~%geometry_msgs/Pose visual_pose~%~%# (optional) Transformation from the visual to the geographic world~%realm_msgs/Georeference georeference~%~%######################## Flags ########################~%# Reset flag: set true, if following stage should be resetted~%std_msgs/Bool do_reset~%~%# Accurate pose flag: set true, if pose is suited for dense reconstruction~%std_msgs/Bool has_accurate_pose~%~%# Is key frame flag: set true, if frame was marked as keyframe~%std_msgs/Bool is_keyframe~%~%# Is georeferenced flag: set true, if frame was successfully georeferenced~%std_msgs/Bool is_georeferenced~%~%# Flag to check if surface was computed with 2.5D elevation or not~%std_msgs/Bool is_surface_elevated~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: std_msgs/UInt64~%uint64 data~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: realm_msgs/Pinhole~%#####################################################~%# A message containing general pinhole camera model #~%#####################################################~%~%# Image dimensions~%std_msgs/UInt32 width~%std_msgs/UInt32 height~%~%# Principal point~%std_msgs/Float64 cx~%std_msgs/Float64 cy~%~%# Focal length~%std_msgs/Float64 fx~%std_msgs/Float64 fy~%~%# Radial distortion parameters~%std_msgs/Float64 k1~%std_msgs/Float64 k2~%std_msgs/Float64 p1~%std_msgs/Float64 p2~%std_msgs/Float64 k3~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%================================================================================~%MSG: realm_msgs/PointCloud~%######################################################~%# A message containing basic REALM sparse cloud data #~%######################################################~%~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Vector of unique point ids~%uint32[] point_ids~%~%# (required) Data of the sparse cloud structured as cv::Mat with row(i) = x,y,z~%sensor_msgs/Image points~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: realm_msgs/Depthmap~%##################################################~%# A message containing basic REALM depthmap data #~%##################################################~%~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Camera_model containing pinhole parameters of capturing cam~%realm_msgs/Pinhole camera_model~%~%# (required) Pose during acquisition~%geometry_msgs/Pose pose~%~%# (required) Depth information~%sensor_msgs/Image data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realm_msgs/CvGridMap~%# Header for time and frame~%Header header~%~%# CvGridMap uni resolution in x-/y-dir~%float64 resolution~%~%# CvGridMap position of roi~%geometry_msgs/Point pos~%~%# CvGridMap length of roi in x~%float64 length_x~%~%# CvGridMap length of roi in y~%float64 length_y~%~%# CvGridMap layer names~%string[] layers~%~%# CvGridMap layer data~%sensor_msgs/Image[] data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: realm_msgs/Georeference~%#####################################################~%# A message containing georeference informations    #~%#####################################################~%~%# Following message is basically a similarity transformation~%~%geometry_msgs/Transform transform~%std_msgs/Float64[] scale~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frame)))
  "Returns full string definition for message of type 'Frame"
  (cl:format cl:nil "#######################################################~%# A message containing basic REALM frame informations #~%#######################################################~%~%##################### Sensor data #####################~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Unique name/id of the acquiring camera~%std_msgs/String camera_id~%~%# (required) Frame id which is constant over the whole stage processing. Should only be set once~%std_msgs/UInt32 stage_id~%~%# (required) Timestamp of the acquisition. Is not the same as ros message timestamp!~%std_msgs/UInt64 timestamp~%~%# (required) Imagedata containing the compressed camera data~%sensor_msgs/CompressedImage imagedata~%~%# (required) Camera_model containing pinhole parameters of capturing cam~%realm_msgs/Pinhole camera_model~%~%# (required) Camera orientation as quaternion~%geometry_msgs/Quaternion orientation~%~%# (required) Gnss data containing geodetic informations of the image~%sensor_msgs/NavSatFix gpsdata~%~%# (optional) Point cloud of the observed surface~%realm_msgs/PointCloud sparse_cloud~%~%# (optional) Depthmap of the observed scene~%realm_msgs/Depthmap depthmap~%~%# (optional) Surface model as grid map of the frame projection~%realm_msgs/CvGridMap surface_model~%~%# (optional) Orthophoto of the frame~%realm_msgs/CvGridMap orthophoto~%~%# (optional) Heading in Degree, required if mapping on GNSS only~%std_msgs/Float32 heading~%~%# (optional) Visual pose of the camera in local coordinate frame, required e.g. for georeference updates~%geometry_msgs/Pose visual_pose~%~%# (optional) Transformation from the visual to the geographic world~%realm_msgs/Georeference georeference~%~%######################## Flags ########################~%# Reset flag: set true, if following stage should be resetted~%std_msgs/Bool do_reset~%~%# Accurate pose flag: set true, if pose is suited for dense reconstruction~%std_msgs/Bool has_accurate_pose~%~%# Is key frame flag: set true, if frame was marked as keyframe~%std_msgs/Bool is_keyframe~%~%# Is georeferenced flag: set true, if frame was successfully georeferenced~%std_msgs/Bool is_georeferenced~%~%# Flag to check if surface was computed with 2.5D elevation or not~%std_msgs/Bool is_surface_elevated~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: std_msgs/UInt64~%uint64 data~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: realm_msgs/Pinhole~%#####################################################~%# A message containing general pinhole camera model #~%#####################################################~%~%# Image dimensions~%std_msgs/UInt32 width~%std_msgs/UInt32 height~%~%# Principal point~%std_msgs/Float64 cx~%std_msgs/Float64 cy~%~%# Focal length~%std_msgs/Float64 fx~%std_msgs/Float64 fy~%~%# Radial distortion parameters~%std_msgs/Float64 k1~%std_msgs/Float64 k2~%std_msgs/Float64 p1~%std_msgs/Float64 p2~%std_msgs/Float64 k3~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%================================================================================~%MSG: realm_msgs/PointCloud~%######################################################~%# A message containing basic REALM sparse cloud data #~%######################################################~%~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Vector of unique point ids~%uint32[] point_ids~%~%# (required) Data of the sparse cloud structured as cv::Mat with row(i) = x,y,z~%sensor_msgs/Image points~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: realm_msgs/Depthmap~%##################################################~%# A message containing basic REALM depthmap data #~%##################################################~%~%# (required) Header containing message meta data~%std_msgs/Header header~%~%# (required) Camera_model containing pinhole parameters of capturing cam~%realm_msgs/Pinhole camera_model~%~%# (required) Pose during acquisition~%geometry_msgs/Pose pose~%~%# (required) Depth information~%sensor_msgs/Image data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realm_msgs/CvGridMap~%# Header for time and frame~%Header header~%~%# CvGridMap uni resolution in x-/y-dir~%float64 resolution~%~%# CvGridMap position of roi~%geometry_msgs/Point pos~%~%# CvGridMap length of roi in x~%float64 length_x~%~%# CvGridMap length of roi in y~%float64 length_y~%~%# CvGridMap layer names~%string[] layers~%~%# CvGridMap layer data~%sensor_msgs/Image[] data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: realm_msgs/Georeference~%#####################################################~%# A message containing georeference informations    #~%#####################################################~%~%# Following message is basically a similarity transformation~%~%geometry_msgs/Transform transform~%std_msgs/Float64[] scale~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stage_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imagedata))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsdata))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sparse_cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depthmap))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'surface_model))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orthophoto))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heading))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'visual_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'georeference))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'do_reset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'has_accurate_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'is_keyframe))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'is_georeferenced))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'is_surface_elevated))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frame>))
  "Converts a ROS message object to a list"
  (cl:list 'Frame
    (cl:cons ':header (header msg))
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':stage_id (stage_id msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':imagedata (imagedata msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':gpsdata (gpsdata msg))
    (cl:cons ':sparse_cloud (sparse_cloud msg))
    (cl:cons ':depthmap (depthmap msg))
    (cl:cons ':surface_model (surface_model msg))
    (cl:cons ':orthophoto (orthophoto msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':visual_pose (visual_pose msg))
    (cl:cons ':georeference (georeference msg))
    (cl:cons ':do_reset (do_reset msg))
    (cl:cons ':has_accurate_pose (has_accurate_pose msg))
    (cl:cons ':is_keyframe (is_keyframe msg))
    (cl:cons ':is_georeferenced (is_georeferenced msg))
    (cl:cons ':is_surface_elevated (is_surface_elevated msg))
))
