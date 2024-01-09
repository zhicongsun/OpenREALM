;; Auto-generated. Do not edit!


(when (boundp 'realm_msgs::Pinhole)
  (if (not (find-package "REALM_MSGS"))
    (make-package "REALM_MSGS"))
  (shadow 'Pinhole (find-package "REALM_MSGS")))
(unless (find-package "REALM_MSGS::PINHOLE")
  (make-package "REALM_MSGS::PINHOLE"))

(in-package "ROS")
;;//! \htmlinclude Pinhole.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realm_msgs::Pinhole
  :super ros::object
  :slots (_width _height _cx _cy _fx _fy _k1 _k2 _p1 _p2 _k3 ))

(defmethod realm_msgs::Pinhole
  (:init
   (&key
    ((:width __width) (instance std_msgs::UInt32 :init))
    ((:height __height) (instance std_msgs::UInt32 :init))
    ((:cx __cx) (instance std_msgs::Float64 :init))
    ((:cy __cy) (instance std_msgs::Float64 :init))
    ((:fx __fx) (instance std_msgs::Float64 :init))
    ((:fy __fy) (instance std_msgs::Float64 :init))
    ((:k1 __k1) (instance std_msgs::Float64 :init))
    ((:k2 __k2) (instance std_msgs::Float64 :init))
    ((:p1 __p1) (instance std_msgs::Float64 :init))
    ((:p2 __p2) (instance std_msgs::Float64 :init))
    ((:k3 __k3) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _width __width)
   (setq _height __height)
   (setq _cx __cx)
   (setq _cy __cy)
   (setq _fx __fx)
   (setq _fy __fy)
   (setq _k1 __k1)
   (setq _k2 __k2)
   (setq _p1 __p1)
   (setq _p2 __p2)
   (setq _k3 __k3)
   self)
  (:width
   (&rest __width)
   (if (keywordp (car __width))
       (send* _width __width)
     (progn
       (if __width (setq _width (car __width)))
       _width)))
  (:height
   (&rest __height)
   (if (keywordp (car __height))
       (send* _height __height)
     (progn
       (if __height (setq _height (car __height)))
       _height)))
  (:cx
   (&rest __cx)
   (if (keywordp (car __cx))
       (send* _cx __cx)
     (progn
       (if __cx (setq _cx (car __cx)))
       _cx)))
  (:cy
   (&rest __cy)
   (if (keywordp (car __cy))
       (send* _cy __cy)
     (progn
       (if __cy (setq _cy (car __cy)))
       _cy)))
  (:fx
   (&rest __fx)
   (if (keywordp (car __fx))
       (send* _fx __fx)
     (progn
       (if __fx (setq _fx (car __fx)))
       _fx)))
  (:fy
   (&rest __fy)
   (if (keywordp (car __fy))
       (send* _fy __fy)
     (progn
       (if __fy (setq _fy (car __fy)))
       _fy)))
  (:k1
   (&rest __k1)
   (if (keywordp (car __k1))
       (send* _k1 __k1)
     (progn
       (if __k1 (setq _k1 (car __k1)))
       _k1)))
  (:k2
   (&rest __k2)
   (if (keywordp (car __k2))
       (send* _k2 __k2)
     (progn
       (if __k2 (setq _k2 (car __k2)))
       _k2)))
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:p2
   (&rest __p2)
   (if (keywordp (car __p2))
       (send* _p2 __p2)
     (progn
       (if __p2 (setq _p2 (car __p2)))
       _p2)))
  (:k3
   (&rest __k3)
   (if (keywordp (car __k3))
       (send* _k3 __k3)
     (progn
       (if __k3 (setq _k3 (car __k3)))
       _k3)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/UInt32 _width
    (send _width :serialization-length)
    ;; std_msgs/UInt32 _height
    (send _height :serialization-length)
    ;; std_msgs/Float64 _cx
    (send _cx :serialization-length)
    ;; std_msgs/Float64 _cy
    (send _cy :serialization-length)
    ;; std_msgs/Float64 _fx
    (send _fx :serialization-length)
    ;; std_msgs/Float64 _fy
    (send _fy :serialization-length)
    ;; std_msgs/Float64 _k1
    (send _k1 :serialization-length)
    ;; std_msgs/Float64 _k2
    (send _k2 :serialization-length)
    ;; std_msgs/Float64 _p1
    (send _p1 :serialization-length)
    ;; std_msgs/Float64 _p2
    (send _p2 :serialization-length)
    ;; std_msgs/Float64 _k3
    (send _k3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/UInt32 _width
       (send _width :serialize s)
     ;; std_msgs/UInt32 _height
       (send _height :serialize s)
     ;; std_msgs/Float64 _cx
       (send _cx :serialize s)
     ;; std_msgs/Float64 _cy
       (send _cy :serialize s)
     ;; std_msgs/Float64 _fx
       (send _fx :serialize s)
     ;; std_msgs/Float64 _fy
       (send _fy :serialize s)
     ;; std_msgs/Float64 _k1
       (send _k1 :serialize s)
     ;; std_msgs/Float64 _k2
       (send _k2 :serialize s)
     ;; std_msgs/Float64 _p1
       (send _p1 :serialize s)
     ;; std_msgs/Float64 _p2
       (send _p2 :serialize s)
     ;; std_msgs/Float64 _k3
       (send _k3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/UInt32 _width
     (send _width :deserialize buf ptr-) (incf ptr- (send _width :serialization-length))
   ;; std_msgs/UInt32 _height
     (send _height :deserialize buf ptr-) (incf ptr- (send _height :serialization-length))
   ;; std_msgs/Float64 _cx
     (send _cx :deserialize buf ptr-) (incf ptr- (send _cx :serialization-length))
   ;; std_msgs/Float64 _cy
     (send _cy :deserialize buf ptr-) (incf ptr- (send _cy :serialization-length))
   ;; std_msgs/Float64 _fx
     (send _fx :deserialize buf ptr-) (incf ptr- (send _fx :serialization-length))
   ;; std_msgs/Float64 _fy
     (send _fy :deserialize buf ptr-) (incf ptr- (send _fy :serialization-length))
   ;; std_msgs/Float64 _k1
     (send _k1 :deserialize buf ptr-) (incf ptr- (send _k1 :serialization-length))
   ;; std_msgs/Float64 _k2
     (send _k2 :deserialize buf ptr-) (incf ptr- (send _k2 :serialization-length))
   ;; std_msgs/Float64 _p1
     (send _p1 :deserialize buf ptr-) (incf ptr- (send _p1 :serialization-length))
   ;; std_msgs/Float64 _p2
     (send _p2 :deserialize buf ptr-) (incf ptr- (send _p2 :serialization-length))
   ;; std_msgs/Float64 _k3
     (send _k3 :deserialize buf ptr-) (incf ptr- (send _k3 :serialization-length))
   ;;
   self)
  )

(setf (get realm_msgs::Pinhole :md5sum-) "89c97ad67d741eb4b47e5809398cd3a4")
(setf (get realm_msgs::Pinhole :datatype-) "realm_msgs/Pinhole")
(setf (get realm_msgs::Pinhole :definition-)
      "#####################################################
# A message containing general pinhole camera model #
#####################################################

# Image dimensions
std_msgs/UInt32 width
std_msgs/UInt32 height

# Principal point
std_msgs/Float64 cx
std_msgs/Float64 cy

# Focal length
std_msgs/Float64 fx
std_msgs/Float64 fy

# Radial distortion parameters
std_msgs/Float64 k1
std_msgs/Float64 k2
std_msgs/Float64 p1
std_msgs/Float64 p2
std_msgs/Float64 k3

================================================================================
MSG: std_msgs/UInt32
uint32 data
================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :realm_msgs/Pinhole "89c97ad67d741eb4b47e5809398cd3a4")


