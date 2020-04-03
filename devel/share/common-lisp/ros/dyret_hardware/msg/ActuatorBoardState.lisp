; Auto-generated. Do not edit!


(cl:in-package dyret_hardware-msg)


;//! \htmlinclude ActuatorBoardState.msg.html

(cl:defclass <ActuatorBoardState> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 8 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ActuatorBoardState (<ActuatorBoardState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorBoardState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorBoardState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_hardware-msg:<ActuatorBoardState> is deprecated: use dyret_hardware-msg:ActuatorBoardState instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ActuatorBoardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_hardware-msg:position-val is deprecated.  Use dyret_hardware-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorBoardState>) ostream)
  "Serializes a message object of type '<ActuatorBoardState>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorBoardState>) istream)
  "Deserializes a message object of type '<ActuatorBoardState>"
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 8)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorBoardState>)))
  "Returns string type for a message object of type '<ActuatorBoardState>"
  "dyret_hardware/ActuatorBoardState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorBoardState)))
  "Returns string type for a message object of type 'ActuatorBoardState"
  "dyret_hardware/ActuatorBoardState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorBoardState>)))
  "Returns md5sum for a message object of type '<ActuatorBoardState>"
  "61a2e72fc291b8e237e79adac79aac78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorBoardState)))
  "Returns md5sum for a message object of type 'ActuatorBoardState"
  "61a2e72fc291b8e237e79adac79aac78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorBoardState>)))
  "Returns full string definition for message of type '<ActuatorBoardState>"
  (cl:format cl:nil "float32[8] position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorBoardState)))
  "Returns full string definition for message of type 'ActuatorBoardState"
  (cl:format cl:nil "float32[8] position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorBoardState>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorBoardState>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorBoardState
    (cl:cons ':position (position msg))
))
