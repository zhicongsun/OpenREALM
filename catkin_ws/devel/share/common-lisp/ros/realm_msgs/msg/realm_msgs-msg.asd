
(cl:in-package :asdf)

(defsystem "realm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CvGridMap" :depends-on ("_package_CvGridMap"))
    (:file "_package_CvGridMap" :depends-on ("_package"))
    (:file "Depthmap" :depends-on ("_package_Depthmap"))
    (:file "_package_Depthmap" :depends-on ("_package"))
    (:file "Frame" :depends-on ("_package_Frame"))
    (:file "_package_Frame" :depends-on ("_package"))
    (:file "Georeference" :depends-on ("_package_Georeference"))
    (:file "_package_Georeference" :depends-on ("_package"))
    (:file "GroundImageCompressed" :depends-on ("_package_GroundImageCompressed"))
    (:file "_package_GroundImageCompressed" :depends-on ("_package"))
    (:file "Pinhole" :depends-on ("_package_Pinhole"))
    (:file "_package_Pinhole" :depends-on ("_package"))
    (:file "PointCloud" :depends-on ("_package_PointCloud"))
    (:file "_package_PointCloud" :depends-on ("_package"))
  ))