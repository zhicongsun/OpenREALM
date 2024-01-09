; Auto-generated. Do not edit!


(cl:in-package realm_msgs-msg)


;//! \htmlinclude GroundImageCompressed.msg.html

(cl:defclass <GroundImageCompressed> (roslisp-msg-protocol:ros-message)
  ((imagedata
    :reader imagedata
    :initarg :imagedata
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage))
   (gpsdata
    :reader gpsdata
    :initarg :gpsdata
    :type sensor_msgs-msg:NavSatFix
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatFix))
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass GroundImageCompressed (<GroundImageCompressed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroundImageCompressed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroundImageCompressed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realm_msgs-msg:<GroundImageCompressed> is deprecated: use realm_msgs-msg:GroundImageCompressed instead.")))

(cl:ensure-generic-function 'imagedata-val :lambda-list '(m))
(cl:defmethod imagedata-val ((m <GroundImageCompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:imagedata-val is deprecated.  Use realm_msgs-msg:imagedata instead.")
  (imagedata m))

(cl:ensure-generic-function 'gpsdata-val :lambda-list '(m))
(cl:defmethod gpsdata-val ((m <GroundImageCompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:gpsdata-val is deprecated.  Use realm_msgs-msg:gpsdata instead.")
  (gpsdata m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <GroundImageCompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:scale-val is deprecated.  Use realm_msgs-msg:scale instead.")
  (scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroundImageCompressed>) ostream)
  "Serializes a message object of type '<GroundImageCompressed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imagedata) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsdata) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroundImageCompressed>) istream)
  "Deserializes a message object of type '<GroundImageCompressed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imagedata) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsdata) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroundImageCompressed>)))
  "Returns string type for a message object of type '<GroundImageCompressed>"
  "realm_msgs/GroundImageCompressed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroundImageCompressed)))
  "Returns string type for a message object of type 'GroundImageCompressed"
  "realm_msgs/GroundImageCompressed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroundImageCompressed>)))
  "Returns md5sum for a message object of type '<GroundImageCompressed>"
  "1c6d3d69899b6565e069bc83ccb3ad99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroundImageCompressed)))
  "Returns md5sum for a message object of type 'GroundImageCompressed"
  "1c6d3d69899b6565e069bc83ccb3ad99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroundImageCompressed>)))
  "Returns full string definition for message of type '<GroundImageCompressed>"
  (cl:format cl:nil "# A message to handle georeferenced images projected to a ground plane~%~%# Projected image at ground level in ENU coordinate frame~%sensor_msgs/CompressedImage imagedata~%~%# Global position of the image to be displayed. Upper left corner~%sensor_msgs/NavSatFix gpsdata~%~%# Scale of warped image with [m / pixels]~%float64 scale~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroundImageCompressed)))
  "Returns full string definition for message of type 'GroundImageCompressed"
  (cl:format cl:nil "# A message to handle georeferenced images projected to a ground plane~%~%# Projected image at ground level in ENU coordinate frame~%sensor_msgs/CompressedImage imagedata~%~%# Global position of the image to be displayed. Upper left corner~%sensor_msgs/NavSatFix gpsdata~%~%# Scale of warped image with [m / pixels]~%float64 scale~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroundImageCompressed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imagedata))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsdata))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroundImageCompressed>))
  "Converts a ROS message object to a list"
  (cl:list 'GroundImageCompressed
    (cl:cons ':imagedata (imagedata msg))
    (cl:cons ':gpsdata (gpsdata msg))
    (cl:cons ':scale (scale msg))
))
