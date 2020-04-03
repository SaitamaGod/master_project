
(cl:in-package :asdf)

(defsystem "dyret_common-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Configuration" :depends-on ("_package_Configuration"))
    (:file "_package_Configuration" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "PrismaticConfig" :depends-on ("_package_PrismaticConfig"))
    (:file "_package_PrismaticConfig" :depends-on ("_package"))
    (:file "PrismaticState" :depends-on ("_package_PrismaticState"))
    (:file "_package_PrismaticState" :depends-on ("_package"))
    (:file "RevoluteConfig" :depends-on ("_package_RevoluteConfig"))
    (:file "_package_RevoluteConfig" :depends-on ("_package"))
    (:file "RevoluteState" :depends-on ("_package_RevoluteState"))
    (:file "_package_RevoluteState" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))