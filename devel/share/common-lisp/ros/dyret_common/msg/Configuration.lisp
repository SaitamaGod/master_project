; Auto-generated. Do not edit!


(cl:in-package dyret_common-msg)


;//! \htmlinclude Configuration.msg.html

(cl:defclass <Configuration> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (revolute
    :reader revolute
    :initarg :revolute
    :type dyret_common-msg:RevoluteConfig
    :initform (cl:make-instance 'dyret_common-msg:RevoluteConfig))
   (prismatic
    :reader prismatic
    :initarg :prismatic
    :type dyret_common-msg:PrismaticConfig
    :initform (cl:make-instance 'dyret_common-msg:PrismaticConfig)))
)

(cl:defclass Configuration (<Configuration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Configuration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Configuration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_common-msg:<Configuration> is deprecated: use dyret_common-msg:Configuration instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Configuration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:header-val is deprecated.  Use dyret_common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'revolute-val :lambda-list '(m))
(cl:defmethod revolute-val ((m <Configuration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:revolute-val is deprecated.  Use dyret_common-msg:revolute instead.")
  (revolute m))

(cl:ensure-generic-function 'prismatic-val :lambda-list '(m))
(cl:defmethod prismatic-val ((m <Configuration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:prismatic-val is deprecated.  Use dyret_common-msg:prismatic instead.")
  (prismatic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Configuration>) ostream)
  "Serializes a message object of type '<Configuration>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'revolute) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'prismatic) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Configuration>) istream)
  "Deserializes a message object of type '<Configuration>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'revolute) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'prismatic) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Configuration>)))
  "Returns string type for a message object of type '<Configuration>"
  "dyret_common/Configuration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Configuration)))
  "Returns string type for a message object of type 'Configuration"
  "dyret_common/Configuration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Configuration>)))
  "Returns md5sum for a message object of type '<Configuration>"
  "118b2ad5ce546e709acfc0ea7ee160e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Configuration)))
  "Returns md5sum for a message object of type 'Configuration"
  "118b2ad5ce546e709acfc0ea7ee160e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Configuration>)))
  "Returns full string definition for message of type '<Configuration>"
  (cl:format cl:nil "# This message represents the configuration of the servos~%#~%# - The configuration is applied to all servos if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of servos in~%# cases where there are more than one parameter per servo needed~%~%# Header for general bookkeeping~%std_msgs/Header header~%~%dyret_common/RevoluteConfig revolute~%dyret_common/PrismaticConfig prismatic~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dyret_common/RevoluteConfig~%# This message represents the configuration of the revolute joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_SPEED      = 0~%uint8 TYPE_SET_PID        = 1~%uint8 TYPE_ENABLE_TORQUE  = 2~%uint8 TYPE_DISABLE_TORQUE = 3~%~%================================================================================~%MSG: dyret_common/PrismaticConfig~%# This message represents the configuration of the prismatic joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_PID = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Configuration)))
  "Returns full string definition for message of type 'Configuration"
  (cl:format cl:nil "# This message represents the configuration of the servos~%#~%# - The configuration is applied to all servos if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of servos in~%# cases where there are more than one parameter per servo needed~%~%# Header for general bookkeeping~%std_msgs/Header header~%~%dyret_common/RevoluteConfig revolute~%dyret_common/PrismaticConfig prismatic~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dyret_common/RevoluteConfig~%# This message represents the configuration of the revolute joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_SPEED      = 0~%uint8 TYPE_SET_PID        = 1~%uint8 TYPE_ENABLE_TORQUE  = 2~%uint8 TYPE_DISABLE_TORQUE = 3~%~%================================================================================~%MSG: dyret_common/PrismaticConfig~%# This message represents the configuration of the prismatic joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_PID = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Configuration>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'revolute))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'prismatic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Configuration>))
  "Converts a ROS message object to a list"
  (cl:list 'Configuration
    (cl:cons ':header (header msg))
    (cl:cons ':revolute (revolute msg))
    (cl:cons ':prismatic (prismatic msg))
))
