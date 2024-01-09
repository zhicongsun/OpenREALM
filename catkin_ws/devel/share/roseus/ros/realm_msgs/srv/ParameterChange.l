;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::ParameterChange)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'ParameterChange (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::PARAMETERCHANGE")
  (make-package "REALM_MSGS::PARAMETERCHANGE"))
(unless (find-package "REALM_MSGS::PARAMETERCHANGEREQUEST")
  (make-package "REALM_MSGS::PARAMETERCHANGEREQUEST"))
(unless (find-package "REALM_MSGS::PARAMETERCHANGERESPONSE")
  (make-package "REALM_MSGS::PARAMETERCHANGERESPONSE"))

(in-package "ROS")





(defclass realm_msgs::ParameterChangeRequest
  :super ros::object
  :slots (_name _val ))

(defmethod realm_msgs::ParameterChangeRequest
  (:init
   (&key
    ((:name __name) "")
    ((:val __val) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _val (string __val))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _val
    4 (length _val)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _val
       (write-long (length _val) s) (princ _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _val
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _val (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass realm_msgs::ParameterChangeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod realm_msgs::ParameterChangeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass realm_msgs::ParameterChange
  :super ros::object
  :slots ())

(setf (get realm_msgs::ParameterChange :md5sum-) "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")
(setf (get realm_msgs::ParameterChange :datatype-) "realm_msgs/ParameterChange")
(setf (get realm_msgs::ParameterChange :request) realm_msgs::ParameterChangeRequest)
(setf (get realm_msgs::ParameterChange :response) realm_msgs::ParameterChangeResponse)

(defmethod realm_msgs::ParameterChangeRequest
  (:response () (instance realm_msgs::ParameterChangeResponse :init)))

(setf (get realm_msgs::ParameterChangeRequest :md5sum-) "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")
(setf (get realm_msgs::ParameterChangeRequest :datatype-) "realm_msgs/ParameterChangeRequest")
(setf (get realm_msgs::ParameterChangeRequest :definition-)
      "# Name of the parameter
string name

# Value of the parameter
# Must be parsed inside node
string val

---

# True if parameter was set to value
bool success
string message

")

(setf (get realm_msgs::ParameterChangeResponse :md5sum-) "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")
(setf (get realm_msgs::ParameterChangeResponse :datatype-) "realm_msgs/ParameterChangeResponse")
(setf (get realm_msgs::ParameterChangeResponse :definition-)
      "# Name of the parameter
string name

# Value of the parameter
# Must be parsed inside node
string val

---

# True if parameter was set to value
bool success
string message

")



(provide :realm_msgs/ParameterChange "1b0cde31d4f2ab3d28e7c08a4c6bd1f0")


