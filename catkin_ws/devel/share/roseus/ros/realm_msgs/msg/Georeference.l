;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::Georeference)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'Georeference (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::GEOREFERENCE")
  (make-package "REALM_MSGS::GEOREFERENCE"))

(in-package "ROS")
;;//! \htmlinclude Georeference.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realm_msgs::Georeference
  :super ros::object
  :slots (_transform _scale ))

(defmethod realm_msgs::Georeference
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:scale __scale) ())
    )
   (send-super :init)
   (setq _transform __transform)
   (setq _scale __scale)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:scale
   (&rest __scale)
   (if (keywordp (car __scale))
       (send* _scale __scale)
     (progn
       (if __scale (setq _scale (car __scale)))
       _scale)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; std_msgs/Float64[] _scale
    (apply #'+ (send-all _scale :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; std_msgs/Float64[] _scale
     (write-long (length _scale) s)
     (dolist (elem _scale)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; std_msgs/Float64[] _scale
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scale (let (r) (dotimes (i n) (push (instance std_msgs::Float64 :init) r)) r))
     (dolist (elem- _scale)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realm_msgs::Georeference :md5sum-) "916e9c01fe447c6361e802269207d6a2")
(setf (get realm_msgs::Georeference :datatype-) "realm_msgs/Georeference")
(setf (get realm_msgs::Georeference :definition-)
      "#####################################################
# A message containing georeference informations    #
#####################################################

# Following message is basically a similarity transformation

geometry_msgs/Transform transform
std_msgs/Float64[] scale

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :realm_msgs/Georeference "916e9c01fe447c6361e802269207d6a2")


