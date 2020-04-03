;; Auto-generated. Do not edit!


(when (boundp 'dyret_common::PrismaticConfig)
  (if (not (find-package "DYRET_COMMON"))
    (make-package "DYRET_COMMON"))
  (shadow 'PrismaticConfig (find-package "DYRET_COMMON")))
(unless (find-package "DYRET_COMMON::PRISMATICCONFIG")
  (make-package "DYRET_COMMON::PRISMATICCONFIG"))

(in-package "ROS")
;;//! \htmlinclude PrismaticConfig.msg.html


(intern "*TYPE_SET_PID*" (find-package "DYRET_COMMON::PRISMATICCONFIG"))
(shadow '*TYPE_SET_PID* (find-package "DYRET_COMMON::PRISMATICCONFIG"))
(defconstant dyret_common::PrismaticConfig::*TYPE_SET_PID* 1)
(defclass dyret_common::PrismaticConfig
  :super ros::object
  :slots (_ids _parameters _type ))

(defmethod dyret_common::PrismaticConfig
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :char))
    ((:parameters __parameters) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _parameters __parameters)
   (setq _type (round __type))
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8[] _ids
    (* 1    (length _ids)) 4
    ;; float64[] _parameters
    (* 8    (length _parameters)) 4
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _ids
     (write-long (length _ids) s)
     (princ _ids s)
     ;; float64[] _parameters
     (write-long (length _parameters) s)
     (dotimes (i (length _parameters))
       (sys::poke (elt _parameters i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _ids (make-array n :element-type :char))
     (replace _ids buf :start2 ptr-) (incf ptr- n))
   ;; float64[] _parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _parameters i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dyret_common::PrismaticConfig :md5sum-) "3f37ca691727ac5015b55556007febdb")
(setf (get dyret_common::PrismaticConfig :datatype-) "dyret_common/PrismaticConfig")
(setf (get dyret_common::PrismaticConfig :definition-)
      "# This message represents the configuration of the prismatic joints
#
# - The configuration is applied to all joints if the id array is empty.
# - All parameters are added sequentially in the parameter field, so
# the length of this array may be a multiple of the number of joints in
# cases where there are more than one parameter per joint needed

# Joint IDs
uint8[] ids

# Configuration parameters
float64[] parameters

# Configuration type
uint8 type

uint8 TYPE_SET_PID = 1

")



(provide :dyret_common/PrismaticConfig "3f37ca691727ac5015b55556007febdb")


