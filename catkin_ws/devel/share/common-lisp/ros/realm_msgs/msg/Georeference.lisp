; Auto-generated. Do not edit!


(cl:in-package realm_msgs-msg)


;//! \htmlinclude Georeference.msg.html

(cl:defclass <Georeference> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (scale
    :reader scale
    :initarg :scale
    :type (cl:vector std_msgs-msg:Float64)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64 :initial-element (cl:make-instance 'std_msgs-msg:Float64))))
)

(cl:defclass Georeference (<Georeference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Georeference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Georeference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realm_msgs-msg:<Georeference> is deprecated: use realm_msgs-msg:Georeference instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <Georeference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:transform-val is deprecated.  Use realm_msgs-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <Georeference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-msg:scale-val is deprecated.  Use realm_msgs-msg:scale instead.")
  (scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Georeference>) ostream)
  "Serializes a message object of type '<Georeference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scale))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Georeference>) istream)
  "Deserializes a message object of type '<Georeference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scale) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scale)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Georeference>)))
  "Returns string type for a message object of type '<Georeference>"
  "realm_msgs/Georeference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Georeference)))
  "Returns string type for a message object of type 'Georeference"
  "realm_msgs/Georeference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Georeference>)))
  "Returns md5sum for a message object of type '<Georeference>"
  "916e9c01fe447c6361e802269207d6a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Georeference)))
  "Returns md5sum for a message object of type 'Georeference"
  "916e9c01fe447c6361e802269207d6a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Georeference>)))
  "Returns full string definition for message of type '<Georeference>"
  (cl:format cl:nil "#####################################################~%# A message containing georeference informations    #~%#####################################################~%~%# Following message is basically a similarity transformation~%~%geometry_msgs/Transform transform~%std_msgs/Float64[] scale~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Georeference)))
  "Returns full string definition for message of type 'Georeference"
  (cl:format cl:nil "#####################################################~%# A message containing georeference informations    #~%#####################################################~%~%# Following message is basically a similarity transformation~%~%geometry_msgs/Transform transform~%std_msgs/Float64[] scale~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Georeference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scale) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Georeference>))
  "Converts a ROS message object to a list"
  (cl:list 'Georeference
    (cl:cons ':transform (transform msg))
    (cl:cons ':scale (scale msg))
))
