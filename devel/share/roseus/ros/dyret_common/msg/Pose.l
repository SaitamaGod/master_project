;; Auto-generated. Do not edit!


(when (boundp 'dyret_common::Pose)
  (if (not (find-package "DYRET_COMMON"))
    (make-package "DYRET_COMMON"))
  (shadow 'Pose (find-package "DYRET_COMMON")))
(unless (find-package "DYRET_COMMON::POSE")
  (make-package "DYRET_COMMON::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dyret_common::Pose
  :super ros::object
  :slots (_header _revolute _prismatic ))

(defmethod dyret_common::Pose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:revolute __revolute) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:prismatic __prismatic) (make-array 0 :initial-element 0.0 :element-type :float))
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
   (&optional __revolute)
   (if __revolute (setq _revolute __revolute)) _revolute)
  (:prismatic
   (&optional __prismatic)
   (if __prismatic (setq _prismatic __prismatic)) _prismatic)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _revolute
    (* 4    (length _revolute)) 4
    ;; float32[] _prismatic
    (* 4    (length _prismatic)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _revolute
     (write-long (length _revolute) s)
     (dotimes (i (length _revolute))
       (sys::poke (elt _revolute i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _prismatic
     (write-long (length _prismatic) s)
     (dotimes (i (length _prismatic))
       (sys::poke (elt _prismatic i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _revolute
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _revolute (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _revolute i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _prismatic
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prismatic (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _prismatic i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dyret_common::Pose :md5sum-) "d38af895dd2ed7501d4d52c672ffa71b")
(setf (get dyret_common::Pose :datatype-) "dyret_common/Pose")
(setf (get dyret_common::Pose :definition-)
      "# Joint pose
std_msgs/Header header
# There are 12 revolute joints that have to be
# specified. Valid messages contains either 0 or 12 revolute angles
float32[] revolute
# For prismatic we allow either 0, 2 or 8 values, either
# specifying all joints or 1 for top extension and one
# for bottom extension for all legs
float32[] prismatic

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

")



(provide :dyret_common/Pose "d38af895dd2ed7501d4d52c672ffa71b")


