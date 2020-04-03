; Auto-generated. Do not edit!


(cl:in-package dyret_common-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (revolute
    :reader revolute
    :initarg :revolute
    :type (cl:vector dyret_common-msg:RevoluteState)
   :initform (cl:make-array 12 :element-type 'dyret_common-msg:RevoluteState :initial-element (cl:make-instance 'dyret_common-msg:RevoluteState)))
   (prismatic
    :reader prismatic
    :initarg :prismatic
    :type (cl:vector dyret_common-msg:PrismaticState)
   :initform (cl:make-array 8 :element-type 'dyret_common-msg:PrismaticState :initial-element (cl:make-instance 'dyret_common-msg:PrismaticState))))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_common-msg:<State> is deprecated: use dyret_common-msg:State instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:header-val is deprecated.  Use dyret_common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'revolute-val :lambda-list '(m))
(cl:defmethod revolute-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:revolute-val is deprecated.  Use dyret_common-msg:revolute instead.")
  (revolute m))

(cl:ensure-generic-function 'prismatic-val :lambda-list '(m))
(cl:defmethod prismatic-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:prismatic-val is deprecated.  Use dyret_common-msg:prismatic instead.")
  (prismatic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'revolute))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'prismatic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'revolute) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'revolute)))
    (cl:dotimes (i 12)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dyret_common-msg:RevoluteState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'prismatic) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'prismatic)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dyret_common-msg:PrismaticState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "dyret_common/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "dyret_common/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "199e494597c0c7034abea6bdf1e7efee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "199e494597c0c7034abea6bdf1e7efee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "# This message is intended as the output of Dyret~%~%# Header for general bookkeeping~%std_msgs/Header header~%~%# State of revolute joints~%dyret_common/RevoluteState[12] revolute~%# State of prismatic joints~%dyret_common/PrismaticState[8] prismatic~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dyret_common/RevoluteState~%# This message represents the state of a single revolute joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%float32 velocity~%float32 current~%~%# Physical state~%float32 voltage~%float32 temperature~%~%# Controller state~%float32 set_point~%float32 error~%~%# Joint status:~%uint8 status~%~%uint8 STATUS_NOERROR       = 0~%uint8 STATUS_INSTRUCTION   = 1~%uint8 STATUS_OVERLOAD      = 2~%uint8 STATUS_CHECKSUM      = 3~%uint8 STATUS_RANGE         = 4~%uint8 STATUS_OVERHEATING   = 5~%uint8 STATUS_ANGLE_LIMIT   = 6~%uint8 STATUS_INPUT_VOLTAGE = 7~%~%================================================================================~%MSG: dyret_common/PrismaticState~%# This message represents the state of a single prismatic joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%~%# Controller state~%float32 set_point~%float32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "# This message is intended as the output of Dyret~%~%# Header for general bookkeeping~%std_msgs/Header header~%~%# State of revolute joints~%dyret_common/RevoluteState[12] revolute~%# State of prismatic joints~%dyret_common/PrismaticState[8] prismatic~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dyret_common/RevoluteState~%# This message represents the state of a single revolute joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%float32 velocity~%float32 current~%~%# Physical state~%float32 voltage~%float32 temperature~%~%# Controller state~%float32 set_point~%float32 error~%~%# Joint status:~%uint8 status~%~%uint8 STATUS_NOERROR       = 0~%uint8 STATUS_INSTRUCTION   = 1~%uint8 STATUS_OVERLOAD      = 2~%uint8 STATUS_CHECKSUM      = 3~%uint8 STATUS_RANGE         = 4~%uint8 STATUS_OVERHEATING   = 5~%uint8 STATUS_ANGLE_LIMIT   = 6~%uint8 STATUS_INPUT_VOLTAGE = 7~%~%================================================================================~%MSG: dyret_common/PrismaticState~%# This message represents the state of a single prismatic joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%~%# Controller state~%float32 set_point~%float32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'revolute) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prismatic) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':header (header msg))
    (cl:cons ':revolute (revolute msg))
    (cl:cons ':prismatic (prismatic msg))
))
