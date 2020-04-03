;; Auto-generated. Do not edit!


(when (boundp 'dyret_common::State)
  (if (not (find-package "DYRET_COMMON"))
    (make-package "DYRET_COMMON"))
  (shadow 'State (find-package "DYRET_COMMON")))
(unless (find-package "DYRET_COMMON::STATE")
  (make-package "DYRET_COMMON::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dyret_common::State
  :super ros::object
  :slots (_header _revolute _prismatic ))

(defmethod dyret_common::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:revolute __revolute) (let (r) (dotimes (i 12) (push (instance dyret_common::RevoluteState :init) r)) r))
    ((:prismatic __prismatic) (let (r) (dotimes (i 8) (push (instance dyret_common::PrismaticState :init) r)) r))
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
    ;; dyret_common/RevoluteState[12] _revolute
    (apply #'+ (send-all _revolute :serialization-length))
    ;; dyret_common/PrismaticState[8] _prismatic
    (apply #'+ (send-all _prismatic :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dyret_common/RevoluteState[12] _revolute
     (dolist (elem _revolute)
       (send elem :serialize s)
       )
     ;; dyret_common/PrismaticState[8] _prismatic
     (dolist (elem _prismatic)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dyret_common/RevoluteState[12] _revolute
   (dotimes (i 12)
     (send (elt _revolute i) :deserialize buf ptr-) (incf ptr- (send (elt _revolute i) :serialization-length))
     )
   ;; dyret_common/PrismaticState[8] _prismatic
   (dotimes (i 8)
     (send (elt _prismatic i) :deserialize buf ptr-) (incf ptr- (send (elt _prismatic i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get dyret_common::State :md5sum-) "199e494597c0c7034abea6bdf1e7efee")
(setf (get dyret_common::State :datatype-) "dyret_common/State")
(setf (get dyret_common::State :definition-)
      "# This message is intended as the output of Dyret

# Header for general bookkeeping
std_msgs/Header header

# State of revolute joints
dyret_common/RevoluteState[12] revolute
# State of prismatic joints
dyret_common/PrismaticState[8] prismatic

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
MSG: dyret_common/RevoluteState
# This message represents the state of a single revolute joint
# it is not meant to be used alone, but as a part of other
# messages, see 'State'.

# Joint state
float32 position
float32 velocity
float32 current

# Physical state
float32 voltage
float32 temperature

# Controller state
float32 set_point
float32 error

# Joint status:
uint8 status

uint8 STATUS_NOERROR       = 0
uint8 STATUS_INSTRUCTION   = 1
uint8 STATUS_OVERLOAD      = 2
uint8 STATUS_CHECKSUM      = 3
uint8 STATUS_RANGE         = 4
uint8 STATUS_OVERHEATING   = 5
uint8 STATUS_ANGLE_LIMIT   = 6
uint8 STATUS_INPUT_VOLTAGE = 7

================================================================================
MSG: dyret_common/PrismaticState
# This message represents the state of a single prismatic joint
# it is not meant to be used alone, but as a part of other
# messages, see 'State'.

# Joint state
float32 position

# Controller state
float32 set_point
float32 error

")



(provide :dyret_common/State "199e494597c0c7034abea6bdf1e7efee")


