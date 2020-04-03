; Auto-generated. Do not edit!


(cl:in-package dyret_common-srv)


;//! \htmlinclude Configure-request.msg.html

(cl:defclass <Configure-request> (roslisp-msg-protocol:ros-message)
  ((configuration
    :reader configuration
    :initarg :configuration
    :type dyret_common-msg:Configuration
    :initform (cl:make-instance 'dyret_common-msg:Configuration)))
)

(cl:defclass Configure-request (<Configure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Configure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Configure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_common-srv:<Configure-request> is deprecated: use dyret_common-srv:Configure-request instead.")))

(cl:ensure-generic-function 'configuration-val :lambda-list '(m))
(cl:defmethod configuration-val ((m <Configure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-srv:configuration-val is deprecated.  Use dyret_common-srv:configuration instead.")
  (configuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Configure-request>) ostream)
  "Serializes a message object of type '<Configure-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'configuration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Configure-request>) istream)
  "Deserializes a message object of type '<Configure-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'configuration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Configure-request>)))
  "Returns string type for a service object of type '<Configure-request>"
  "dyret_common/ConfigureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Configure-request)))
  "Returns string type for a service object of type 'Configure-request"
  "dyret_common/ConfigureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Configure-request>)))
  "Returns md5sum for a message object of type '<Configure-request>"
  "a1f60ce87d284338086c76bca2c0d0f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Configure-request)))
  "Returns md5sum for a message object of type 'Configure-request"
  "a1f60ce87d284338086c76bca2c0d0f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Configure-request>)))
  "Returns full string definition for message of type '<Configure-request>"
  (cl:format cl:nil "~%dyret_common/Configuration configuration~%~%~%================================================================================~%MSG: dyret_common/Configuration~%# This message represents the configuration of the servos~%#~%# - The configuration is applied to all servos if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of servos in~%# cases where there are more than one parameter per servo needed~%~%# Header for general bookkeeping~%std_msgs/Header header~%~%dyret_common/RevoluteConfig revolute~%dyret_common/PrismaticConfig prismatic~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dyret_common/RevoluteConfig~%# This message represents the configuration of the revolute joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_SPEED      = 0~%uint8 TYPE_SET_PID        = 1~%uint8 TYPE_ENABLE_TORQUE  = 2~%uint8 TYPE_DISABLE_TORQUE = 3~%~%================================================================================~%MSG: dyret_common/PrismaticConfig~%# This message represents the configuration of the prismatic joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_PID = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Configure-request)))
  "Returns full string definition for message of type 'Configure-request"
  (cl:format cl:nil "~%dyret_common/Configuration configuration~%~%~%================================================================================~%MSG: dyret_common/Configuration~%# This message represents the configuration of the servos~%#~%# - The configuration is applied to all servos if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of servos in~%# cases where there are more than one parameter per servo needed~%~%# Header for general bookkeeping~%std_msgs/Header header~%~%dyret_common/RevoluteConfig revolute~%dyret_common/PrismaticConfig prismatic~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dyret_common/RevoluteConfig~%# This message represents the configuration of the revolute joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_SPEED      = 0~%uint8 TYPE_SET_PID        = 1~%uint8 TYPE_ENABLE_TORQUE  = 2~%uint8 TYPE_DISABLE_TORQUE = 3~%~%================================================================================~%MSG: dyret_common/PrismaticConfig~%# This message represents the configuration of the prismatic joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_PID = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Configure-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'configuration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Configure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Configure-request
    (cl:cons ':configuration (configuration msg))
))
;//! \htmlinclude Configure-response.msg.html

(cl:defclass <Configure-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Configure-response (<Configure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Configure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Configure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_common-srv:<Configure-response> is deprecated: use dyret_common-srv:Configure-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Configure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-srv:status-val is deprecated.  Use dyret_common-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Configure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-srv:message-val is deprecated.  Use dyret_common-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Configure-response>)))
    "Constants for message type '<Configure-response>"
  '((:STATUS_NOERROR . 0)
    (:STATUS_PARAMETER . 1)
    (:STATUS_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Configure-response)))
    "Constants for message type 'Configure-response"
  '((:STATUS_NOERROR . 0)
    (:STATUS_PARAMETER . 1)
    (:STATUS_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Configure-response>) ostream)
  "Serializes a message object of type '<Configure-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Configure-response>) istream)
  "Deserializes a message object of type '<Configure-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Configure-response>)))
  "Returns string type for a service object of type '<Configure-response>"
  "dyret_common/ConfigureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Configure-response)))
  "Returns string type for a service object of type 'Configure-response"
  "dyret_common/ConfigureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Configure-response>)))
  "Returns md5sum for a message object of type '<Configure-response>"
  "a1f60ce87d284338086c76bca2c0d0f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Configure-response)))
  "Returns md5sum for a message object of type 'Configure-response"
  "a1f60ce87d284338086c76bca2c0d0f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Configure-response>)))
  "Returns full string definition for message of type '<Configure-response>"
  (cl:format cl:nil "~%uint8 status~%~%uint8 STATUS_NOERROR   = 0~%~%uint8 STATUS_PARAMETER = 1~%~%uint8 STATUS_STATE     = 2~%~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Configure-response)))
  "Returns full string definition for message of type 'Configure-response"
  (cl:format cl:nil "~%uint8 status~%~%uint8 STATUS_NOERROR   = 0~%~%uint8 STATUS_PARAMETER = 1~%~%uint8 STATUS_STATE     = 2~%~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Configure-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Configure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Configure-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Configure)))
  'Configure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Configure)))
  'Configure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Configure)))
  "Returns string type for a service object of type '<Configure>"
  "dyret_common/Configure")