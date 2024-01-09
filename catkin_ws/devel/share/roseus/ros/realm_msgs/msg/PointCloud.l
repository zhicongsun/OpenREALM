;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::PointCloud)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'PointCloud (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::POINTCLOUD")
  (make-package "REALM_MSGS::POINTCLOUD"))

(in-package "ROS")
;;//! \htmlinclude PointCloud.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realm_msgs::PointCloud
  :super ros::object
  :slots (_header _point_ids _points ))

(defmethod realm_msgs::PointCloud
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:point_ids __point_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:points __points) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _point_ids __point_ids)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:point_ids
   (&optional __point_ids)
   (if __point_ids (setq _point_ids __point_ids)) _point_ids)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _point_ids
    (* 4    (length _point_ids)) 4
    ;; sensor_msgs/Image _points
    (send _points :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _point_ids
     (write-long (length _point_ids) s)
     (dotimes (i (length _point_ids))
       (write-long (elt _point_ids i) s)
       )
     ;; sensor_msgs/Image _points
       (send _points :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _point_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _point_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; sensor_msgs/Image _points
     (send _points :deserialize buf ptr-) (incf ptr- (send _points :serialization-length))
   ;;
   self)
  )

(setf (get realm_msgs::PointCloud :md5sum-) "6084ccb52837e7a14d62eb0d8247527b")
(setf (get realm_msgs::PointCloud :datatype-) "realm_msgs/PointCloud")
(setf (get realm_msgs::PointCloud :definition-)
      "######################################################
# A message containing basic REALM sparse cloud data #
######################################################

# (required) Header containing message meta data
std_msgs/Header header

# (required) Vector of unique point ids
uint32[] point_ids

# (required) Data of the sparse cloud structured as cv::Mat with row(i) = x,y,z
sensor_msgs/Image points
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



(provide :realm_msgs/PointCloud "6084ccb52837e7a14d62eb0d8247527b")


