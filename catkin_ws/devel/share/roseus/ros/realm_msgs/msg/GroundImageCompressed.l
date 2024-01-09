;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::GroundImageCompressed)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'GroundImageCompressed (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::GROUNDIMAGECOMPRESSED")
  (make-package "REALM_MSGS::GROUNDIMAGECOMPRESSED"))

(in-package "ROS")
;;//! \htmlinclude GroundImageCompressed.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass realm_msgs::GroundImageCompressed
  :super ros::object
  :slots (_imagedata _gpsdata _scale ))

(defmethod realm_msgs::GroundImageCompressed
  (:init
   (&key
    ((:imagedata __imagedata) (instance sensor_msgs::CompressedImage :init))
    ((:gpsdata __gpsdata) (instance sensor_msgs::NavSatFix :init))
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _imagedata __imagedata)
   (setq _gpsdata __gpsdata)
   (setq _scale (float __scale))
   self)
  (:imagedata
   (&rest __imagedata)
   (if (keywordp (car __imagedata))
       (send* _imagedata __imagedata)
     (progn
       (if __imagedata (setq _imagedata (car __imagedata)))
       _imagedata)))
  (:gpsdata
   (&rest __gpsdata)
   (if (keywordp (car __gpsdata))
       (send* _gpsdata __gpsdata)
     (progn
       (if __gpsdata (setq _gpsdata (car __gpsdata)))
       _gpsdata)))
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/CompressedImage _imagedata
    (send _imagedata :serialization-length)
    ;; sensor_msgs/NavSatFix _gpsdata
    (send _gpsdata :serialization-length)
    ;; float64 _scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/CompressedImage _imagedata
       (send _imagedata :serialize s)
     ;; sensor_msgs/NavSatFix _gpsdata
       (send _gpsdata :serialize s)
     ;; float64 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/CompressedImage _imagedata
     (send _imagedata :deserialize buf ptr-) (incf ptr- (send _imagedata :serialization-length))
   ;; sensor_msgs/NavSatFix _gpsdata
     (send _gpsdata :deserialize buf ptr-) (incf ptr- (send _gpsdata :serialization-length))
   ;; float64 _scale
     (setq _scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get realm_msgs::GroundImageCompressed :md5sum-) "1c6d3d69899b6565e069bc83ccb3ad99")
(setf (get realm_msgs::GroundImageCompressed :datatype-) "realm_msgs/GroundImageCompressed")
(setf (get realm_msgs::GroundImageCompressed :definition-)
      "# A message to handle georeferenced images projected to a ground plane

# Projected image at ground level in ENU coordinate frame
sensor_msgs/CompressedImage imagedata

# Global position of the image to be displayed. Upper left corner
sensor_msgs/NavSatFix gpsdata

# Scale of warped image with [m / pixels]
float64 scale


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

")



(provide :realm_msgs/GroundImageCompressed "1c6d3d69899b6565e069bc83ccb3ad99")


