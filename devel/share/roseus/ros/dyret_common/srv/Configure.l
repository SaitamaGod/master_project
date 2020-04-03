;; Auto-generated. Do not edit!


(when (boundp 'dyret_common::Configure)
  (if (not (find-package "DYRET_COMMON"))
    (make-package "DYRET_COMMON"))
  (shadow 'Configure (find-package "DYRET_COMMON")))
(unless (find-package "DYRET_COMMON::CONFIGURE")
  (make-package "DYRET_COMMON::CONFIGURE"))
(unless (find-package "DYRET_COMMON::CONFIGUREREQUEST")
  (make-package "DYRET_COMMON::CONFIGUREREQUEST"))
(unless (find-package "DYRET_COMMON::CONFIGURERESPONSE")
  (make-package "DYRET_COMMON::CONFIGURERESPONSE"))

(in-package "ROS")





(defclass dyret_common::ConfigureRequest
  :super ros::object
  :slots (_configuration ))

(defmethod dyret_common::ConfigureRequest
  (:init
   (&key
    ((:configuration __configuration) (instance dyret_common::Configuration :init))
    )
   (send-super :init)
   (setq _configuration __configuration)
   self)
  (:configuration
   (&rest __configuration)
   (if (keywordp (car __configuration))
       (send* _configuration __configuration)
     (progn
       (if __configuration (setq _configuration (car __configuration)))
       _configuration)))
  (:serialization-length
   ()
   (+
    ;; dyret_common/Configuration _configuration
    (send _configuration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dyret_common/Configuration _configuration
       (send _configuration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dyret_common/Configuration _configuration
     (send _configuration :deserialize buf ptr-) (incf ptr- (send _configuration :serialization-length))
   ;;
   self)
  )

(intern "*STATUS_NOERROR*" (find-package "DYRET_COMMON::CONFIGURERESPONSE"))
(shadow '*STATUS_NOERROR* (find-package "DYRET_COMMON::CONFIGURERESPONSE"))
(defconstant dyret_common::ConfigureResponse::*STATUS_NOERROR* 0)
(intern "*STATUS_PARAMETER*" (find-package "DYRET_COMMON::CONFIGURERESPONSE"))
(shadow '*STATUS_PARAMETER* (find-package "DYRET_COMMON::CONFIGURERESPONSE"))
(defconstant dyret_common::ConfigureResponse::*STATUS_PARAMETER* 1)
(intern "*STATUS_STATE*" (find-package "DYRET_COMMON::CONFIGURERESPONSE"))
(shadow '*STATUS_STATE* (find-package "DYRET_COMMON::CONFIGURERESPONSE"))
(defconstant dyret_common::ConfigureResponse::*STATUS_STATE* 2)
(defclass dyret_common::ConfigureResponse
  :super ros::object
  :slots (_status _message ))

(defmethod dyret_common::ConfigureResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dyret_common::Configure
  :super ros::object
  :slots ())

(setf (get dyret_common::Configure :md5sum-) "a1f60ce87d284338086c76bca2c0d0f8")
(setf (get dyret_common::Configure :datatype-) "dyret_common/Configure")
(setf (get dyret_common::Configure :request) dyret_common::ConfigureRequest)
(setf (get dyret_common::Configure :response) dyret_common::ConfigureResponse)

(defmethod dyret_common::ConfigureRequest
  (:response () (instance dyret_common::ConfigureResponse :init)))

(setf (get dyret_common::ConfigureRequest :md5sum-) "a1f60ce87d284338086c76bca2c0d0f8")
(setf (get dyret_common::ConfigureRequest :datatype-) "dyret_common/ConfigureRequest")
(setf (get dyret_common::ConfigureRequest :definition-)
      "
dyret_common/Configuration configuration


================================================================================
MSG: dyret_common/Configuration
# This message represents the configuration of the servos
#
# - The configuration is applied to all servos if the id array is empty.
# - All parameters are added sequentially in the parameter field, so
# the length of this array may be a multiple of the number of servos in
# cases where there are more than one parameter per servo needed

# Header for general bookkeeping
std_msgs/Header header

dyret_common/RevoluteConfig revolute
dyret_common/PrismaticConfig prismatic



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: dyret_common/RevoluteConfig
# This message represents the configuration of the revolute joints
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

uint8 TYPE_SET_SPEED      = 0
uint8 TYPE_SET_PID        = 1
uint8 TYPE_ENABLE_TORQUE  = 2
uint8 TYPE_DISABLE_TORQUE = 3

================================================================================
MSG: dyret_common/PrismaticConfig
# This message represents the configuration of the prismatic joints
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
---

uint8 status

uint8 STATUS_NOERROR   = 0

uint8 STATUS_PARAMETER = 1

uint8 STATUS_STATE     = 2


string message

")

(setf (get dyret_common::ConfigureResponse :md5sum-) "a1f60ce87d284338086c76bca2c0d0f8")
(setf (get dyret_common::ConfigureResponse :datatype-) "dyret_common/ConfigureResponse")
(setf (get dyret_common::ConfigureResponse :definition-)
      "
dyret_common/Configuration configuration


================================================================================
MSG: dyret_common/Configuration
# This message represents the configuration of the servos
#
# - The configuration is applied to all servos if the id array is empty.
# - All parameters are added sequentially in the parameter field, so
# the length of this array may be a multiple of the number of servos in
# cases where there are more than one parameter per servo needed

# Header for general bookkeeping
std_msgs/Header header

dyret_common/RevoluteConfig revolute
dyret_common/PrismaticConfig prismatic



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: dyret_common/RevoluteConfig
# This message represents the configuration of the revolute joints
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

uint8 TYPE_SET_SPEED      = 0
uint8 TYPE_SET_PID        = 1
uint8 TYPE_ENABLE_TORQUE  = 2
uint8 TYPE_DISABLE_TORQUE = 3

================================================================================
MSG: dyret_common/PrismaticConfig
# This message represents the configuration of the prismatic joints
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
---

uint8 status

uint8 STATUS_NOERROR   = 0

uint8 STATUS_PARAMETER = 1

uint8 STATUS_STATE     = 2


string message

")



(provide :dyret_common/Configure "a1f60ce87d284338086c76bca2c0d0f8")


