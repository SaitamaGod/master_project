; Auto-generated. Do not edit!


(cl:in-package dyret_hardware-msg)


;//! \htmlinclude ActuatorBoardCommand.msg.html

(cl:defclass <ActuatorBoardCommand> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ActuatorBoardCommand (<ActuatorBoardCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorBoardCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorBoardCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_hardware-msg:<ActuatorBoardCommand> is deprecated: use dyret_hardware-msg:ActuatorBoardCommand instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <ActuatorBoardCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_hardware-msg:length-val is deprecated.  Use dyret_hardware-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorBoardCommand>) ostream)
  "Serializes a message object of type '<ActuatorBoardCommand>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'length))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorBoardCommand>) istream)
  "Deserializes a message object of type '<ActuatorBoardCommand>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'length) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'length)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorBoardCommand>)))
  "Returns string type for a message object of type '<ActuatorBoardCommand>"
  "dyret_hardware/ActuatorBoardCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorBoardCommand)))
  "Returns string type for a message object of type 'ActuatorBoardCommand"
  "dyret_hardware/ActuatorBoardCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorBoardCommand>)))
  "Returns md5sum for a message object of type '<ActuatorBoardCommand>"
  "3d38d684f1da83a97953821045e0f85c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorBoardCommand)))
  "Returns md5sum for a message object of type 'ActuatorBoardCommand"
  "3d38d684f1da83a97953821045e0f85c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorBoardCommand>)))
  "Returns full string definition for message of type '<ActuatorBoardCommand>"
  (cl:format cl:nil "# Length either specifies:~%#   One length for all links~%#   Two lengths - the first for all femurs, the second for all tibias~%#   Individual lengths for each actuator~%~%float32[] length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorBoardCommand)))
  "Returns full string definition for message of type 'ActuatorBoardCommand"
  (cl:format cl:nil "# Length either specifies:~%#   One length for all links~%#   Two lengths - the first for all femurs, the second for all tibias~%#   Individual lengths for each actuator~%~%float32[] length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorBoardCommand>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'length) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorBoardCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorBoardCommand
    (cl:cons ':length (length msg))
))
