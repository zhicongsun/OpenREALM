
(cl:in-package :asdf)

(defsystem "realm_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ParameterChange" :depends-on ("_package_ParameterChange"))
    (:file "_package_ParameterChange" :depends-on ("_package"))
  ))