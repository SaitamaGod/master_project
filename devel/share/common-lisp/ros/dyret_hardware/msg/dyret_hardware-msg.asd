
(cl:in-package :asdf)

(defsystem "dyret_hardware-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ActuatorBoardCommand" :depends-on ("_package_ActuatorBoardCommand"))
    (:file "_package_ActuatorBoardCommand" :depends-on ("_package"))
    (:file "ActuatorBoardState" :depends-on ("_package_ActuatorBoardState"))
    (:file "_package_ActuatorBoardState" :depends-on ("_package"))
  ))