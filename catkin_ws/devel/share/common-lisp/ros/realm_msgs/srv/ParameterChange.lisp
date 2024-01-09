; Auto-generated. Do not edit!


(cl:in-package realm_msgs-srv)


;//! \htmlinclude ParameterChange-request.msg.html

(cl:defclass <ParameterChange-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (val
    :reader val
    :initarg :val
    :type cl:string
    :initform ""))
)

(cl:defclass ParameterChange-request (<ParameterChange-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParameterChange-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParameterChange-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realm_msgs-srv:<ParameterChange-request> is deprecated: use realm_msgs-srv:ParameterChange-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ParameterChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-srv:name-val is deprecated.  Use realm_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <ParameterChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-srv:val-val is deprecated.  Use realm_msgs-srv:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParameterChange-request>) ostream)
  "Serializes a message object of type '<ParameterChange-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'val))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParameterChange-request>) istream)
  "Deserializes a message object of type '<ParameterChange-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'val) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParameterChange-request>)))
  "Returns string type for a service object of type '<ParameterChange-request>"
  "realm_msgs/ParameterChangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParameterChange-request)))
  "Returns string type for a service object of type 'ParameterChange-request"
  "realm_msgs/ParameterChangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParameterChange-request>)))
  "Returns md5sum for a message object of type '<ParameterChange-request>"
  "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParameterChange-request)))
  "Returns md5sum for a message object of type 'ParameterChange-request"
  "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParameterChange-request>)))
  "Returns full string definition for message of type '<ParameterChange-request>"
  (cl:format cl:nil "# Name of the parameter~%string name~%~%# Value of the parameter~%# Must be parsed inside node~%string val~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParameterChange-request)))
  "Returns full string definition for message of type 'ParameterChange-request"
  (cl:format cl:nil "# Name of the parameter~%string name~%~%# Value of the parameter~%# Must be parsed inside node~%string val~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParameterChange-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'val))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParameterChange-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParameterChange-request
    (cl:cons ':name (name msg))
    (cl:cons ':val (val msg))
))
;//! \htmlinclude ParameterChange-response.msg.html

(cl:defclass <ParameterChange-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ParameterChange-response (<ParameterChange-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParameterChange-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParameterChange-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realm_msgs-srv:<ParameterChange-response> is deprecated: use realm_msgs-srv:ParameterChange-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParameterChange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-srv:success-val is deprecated.  Use realm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ParameterChange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realm_msgs-srv:message-val is deprecated.  Use realm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParameterChange-response>) ostream)
  "Serializes a message object of type '<ParameterChange-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParameterChange-response>) istream)
  "Deserializes a message object of type '<ParameterChange-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParameterChange-response>)))
  "Returns string type for a service object of type '<ParameterChange-response>"
  "realm_msgs/ParameterChangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParameterChange-response)))
  "Returns string type for a service object of type 'ParameterChange-response"
  "realm_msgs/ParameterChangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParameterChange-response>)))
  "Returns md5sum for a message object of type '<ParameterChange-response>"
  "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParameterChange-response)))
  "Returns md5sum for a message object of type 'ParameterChange-response"
  "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParameterChange-response>)))
  "Returns full string definition for message of type '<ParameterChange-response>"
  (cl:format cl:nil "~%# True if parameter was set to value~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParameterChange-response)))
  "Returns full string definition for message of type 'ParameterChange-response"
  (cl:format cl:nil "~%# True if parameter was set to value~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParameterChange-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParameterChange-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParameterChange-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParameterChange)))
  'ParameterChange-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParameterChange)))
  'ParameterChange-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParameterChange)))
  "Returns string type for a service object of type '<ParameterChange>"
  "realm_msgs/ParameterChange")