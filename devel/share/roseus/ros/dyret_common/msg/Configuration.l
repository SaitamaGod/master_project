;; Auto-generated. Do not edit!


(when (boundp 'dyret_common::Configuration)
  (if (not (find-package "DYRET_COMMON"))
    (make-package "DYRET_COMMON"))
  (shadow 'Configuration (find-package "DYRET_COMMON")))
(unless (find-package "DYRET_COMMON::CONFIGURATION")
  (make-package "DYRET_COMMON::CONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude Configuration.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dyret_common::Configuration
  :super ros::object
  :slots (_header _revolute _prismatic ))

(defmethod dyret_common::Configuration
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:revolute __revolute) (instance dyret_common::RevoluteConfig :init))
    ((:prismatic __prismatic) (instance dyret_common::PrismaticConfig :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _revolute __revolute)
   (setq _prismatic __prismatic)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:revolute
   (&rest __revolute)
   (if (keywordp (car __revolute))
       (send* _revolute __revolute)
     (progn
       (if __revolute (setq _revolute (car __revolute)))
       _revolute)))
  (:prismatic
   (&rest __prismatic)
   (if (keywordp (car __prismatic))
       (send* _prismatic __prismatic)
     (progn
       (if __prismatic (setq _prismatic (car __prismatic)))
       _prismatic)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; dyret_common/RevoluteConfig _revolute
    (send _revolute :serialization-length)
    ;; dyret_common/PrismaticConfig _prismatic
    (send _prismatic :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dyret_common/RevoluteConfig _revolute
       (send _revolute :serialize s)
     ;; dyret_common/PrismaticConfig _prismatic
       (send _prismatic :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dyret_common/RevoluteConfig _revolute
     (send _revolute :deserialize buf ptr-) (incf ptr- (send _revolute :serialization-length))
   ;; dyret_common/PrismaticConfig _prismatic
     (send _prismatic :deserialize buf ptr-) (incf ptr- (send _prismatic :serialization-length))
   ;;
   self)
  )

(setf (get dyret_common::Configuration :md5sum-) "118b2ad5ce546e709acfc0ea7ee160e9")
(setf (get dyret_common::Configuration :datatype-) "dyret_common/Configuration")
(setf (get dyret_common::Configuration :definition-)
      "# This message represents the configuration of the servos
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

")



(provide :dyret_common/Configuration "118b2ad5ce546e709acfc0ea7ee160e9")


