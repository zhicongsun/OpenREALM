;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::CvGridMap)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'CvGridMap (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::CVGRIDMAP")
  (make-package "REALM_MSGS::CVGRIDMAP"))

(in-package "ROS")
;;//! \htmlinclude CvGridMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realm_msgs::CvGridMap
  :super ros::object
  :slots (_header _resolution _pos _length_x _length_y _layers _data ))

(defmethod realm_msgs::CvGridMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:resolution __resolution) 0.0)
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:length_x __length_x) 0.0)
    ((:length_y __length_y) 0.0)
    ((:layers __layers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:data __data) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _resolution (float __resolution))
   (setq _pos __pos)
   (setq _length_x (float __length_x))
   (setq _length_y (float __length_y))
   (setq _layers __layers)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:length_x
   (&optional __length_x)
   (if __length_x (setq _length_x __length_x)) _length_x)
  (:length_y
   (&optional __length_y)
   (if __length_y (setq _length_y __length_y)) _length_y)
  (:layers
   (&optional __layers)
   (if __layers (setq _layers __layers)) _layers)
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
    ;; float64 _resolution
    8
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; float64 _length_x
    8
    ;; float64 _length_y
    8
    ;; string[] _layers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _layers)) 4
    ;; sensor_msgs/Image[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; float64 _length_x
       (sys::poke _length_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length_y
       (sys::poke _length_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _layers
     (write-long (length _layers) s)
     (dolist (elem _layers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; sensor_msgs/Image[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; float64 _length_x
     (setq _length_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length_y
     (setq _length_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _layers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _layers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _layers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; sensor_msgs/Image[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance sensor_msgs::Image :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realm_msgs::CvGridMap :md5sum-) "51dea13d439405588b5af32df1e176e3")
(setf (get realm_msgs::CvGridMap :datatype-) "realm_msgs/CvGridMap")
(setf (get realm_msgs::CvGridMap :definition-)
      "# Header for time and frame
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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



(provide :realm_msgs/CvGridMap "51dea13d439405588b5af32df1e176e3")


