
(cl:in-package :asdf)

(defsystem "dyret_common-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dyret_common-msg
)
  :components ((:file "_package")
    (:file "Configure" :depends-on ("_package_Configure"))
    (:file "_package_Configure" :depends-on ("_package"))
  ))