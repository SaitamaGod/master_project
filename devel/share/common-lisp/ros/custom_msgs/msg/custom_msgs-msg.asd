
(cl:in-package :asdf)

(defsystem "custom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "encoder_msg" :depends-on ("_package_encoder_msg"))
    (:file "_package_encoder_msg" :depends-on ("_package"))
    (:file "servo_msg" :depends-on ("_package_servo_msg"))
    (:file "_package_servo_msg" :depends-on ("_package"))
    (:file "valve_msg" :depends-on ("_package_valve_msg"))
    (:file "_package_valve_msg" :depends-on ("_package"))
  ))