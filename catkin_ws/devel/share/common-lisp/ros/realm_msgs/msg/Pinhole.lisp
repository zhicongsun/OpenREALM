; Auto-generated. Do not edit!


(cl:in-package realm_msgs-msg)


;//! \htmlinclude Pinhole.msg.html

(cl:defclass <Pinhole> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type std_msgs-msg:UInt32
    :initform (cl:make-instance 'std_msgs-msg:UInt32))
   (height
    :reader height
    :initarg :height
    :type std_msgs-msg:UInt32
    :initform (cl:make-instance 'std_msgs-msg:UInt32))
   (cx
    :reader cx
    :initarg :cx
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cy
    :reader cy
    :initarg :cy
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (fx
    :reader fx
    :initarg :fx
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (fy
    :reader fy
    :initarg :fy
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (k1
    :reader k1
    :initarg :k1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (k2
    :reader k2
    :initarg :k2
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (p1
    :reader p1
    :initarg :p1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (p2
    :reader p2
    :initarg :p2
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (k3
    :reader k3
    :initarg :k3
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass Pinhole (<Pinhole>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pinhole>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pinhole)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realm_msgs-msg:<Pinhole> is deprecated: use realm_msgs-msg:Pinhole instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:width-val is deprecated.  Use realm_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:height-val is deprecated.  Use realm_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'cx-val :lambda-list '(m))
(cl:defmethod cx-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:cx-val is deprecated.  Use realm_msgs-msg:cx instead.")
  (cx m))

(cl:ensure-generic-function 'cy-val :lambda-list '(m))
(cl:defmethod cy-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:cy-val is deprecated.  Use realm_msgs-msg:cy instead.")
  (cy m))

(cl:ensure-generic-function 'fx-val :lambda-list '(m))
(cl:defmethod fx-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:fx-val is deprecated.  Use realm_msgs-msg:fx instead.")
  (fx m))

(cl:ensure-generic-function 'fy-val :lambda-list '(m))
(cl:defmethod fy-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:fy-val is deprecated.  Use realm_msgs-msg:fy instead.")
  (fy m))

(cl:ensure-generic-function 'k1-val :lambda-list '(m))
(cl:defmethod k1-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:k1-val is deprecated.  Use realm_msgs-msg:k1 instead.")
  (k1 m))

(cl:ensure-generic-function 'k2-val :lambda-list '(m))
(cl:defmethod k2-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:k2-val is deprecated.  Use realm_msgs-msg:k2 instead.")
  (k2 m))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:p1-val is deprecated.  Use realm_msgs-msg:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'p2-val :lambda-list '(m))
(cl:defmethod p2-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:p2-val is deprecated.  Use realm_msgs-msg:p2 instead.")
  (p2 m))

(cl:ensure-generic-function 'k3-val :lambda-list '(m))
(cl:defmethod k3-val ((m <Pinhole>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:k3-val is deprecated.  Use realm_msgs-msg:k3 instead.")
  (k3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pinhole>) ostream)
  "Serializes a message object of type '<Pinhole>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'width) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'height) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cx) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fx) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'k1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'k2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'k3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pinhole>) istream)
  "Deserializes a message object of type '<Pinhole>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'width) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'height) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cx) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fx) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'k1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'k2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'k3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pinhole>)))
  "Returns string type for a message object of type '<Pinhole>"
  "realm_msgs/Pinhole")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pinhole)))
  "Returns string type for a message object of type 'Pinhole"
  "realm_msgs/Pinhole")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pinhole>)))
  "Returns md5sum for a message object of type '<Pinhole>"
  "89c97ad67d741eb4b47e5809398cd3a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pinhole)))
  "Returns md5sum for a message object of type 'Pinhole"
  "89c97ad67d741eb4b47e5809398cd3a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pinhole>)))
  "Returns full string definition for message of type '<Pinhole>"
  (cl:format cl:nil "#####################################################~%# A message containing general pinhole camera model #~%#####################################################~%~%# Image dimensions~%std_msgs/UInt32 width~%std_msgs/UInt32 height~%~%# Principal point~%std_msgs/Float64 cx~%std_msgs/Float64 cy~%~%# Focal length~%std_msgs/Float64 fx~%std_msgs/Float64 fy~%~%# Radial distortion parameters~%std_msgs/Float64 k1~%std_msgs/Float64 k2~%std_msgs/Float64 p1~%std_msgs/Float64 p2~%std_msgs/Float64 k3~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pinhole)))
  "Returns full string definition for message of type 'Pinhole"
  (cl:format cl:nil "#####################################################~%# A message containing general pinhole camera model #~%#####################################################~%~%# Image dimensions~%std_msgs/UInt32 width~%std_msgs/UInt32 height~%~%# Principal point~%std_msgs/Float64 cx~%std_msgs/Float64 cy~%~%# Focal length~%std_msgs/Float64 fx~%std_msgs/Float64 fy~%~%# Radial distortion parameters~%std_msgs/Float64 k1~%std_msgs/Float64 k2~%std_msgs/Float64 p1~%std_msgs/Float64 p2~%std_msgs/Float64 k3~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pinhole>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'width))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'height))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cx))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fx))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'k1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'k2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'k3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pinhole>))
  "Converts a ROS message object to a list"
  (cl:list 'Pinhole
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':cx (cx msg))
    (cl:cons ':cy (cy msg))
    (cl:cons ':fx (fx msg))
    (cl:cons ':fy (fy msg))
    (cl:cons ':k1 (k1 msg))
    (cl:cons ':k2 (k2 msg))
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':p2 (p2 msg))
    (cl:cons ':k3 (k3 msg))
))
