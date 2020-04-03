; Auto-generated. Do not edit!


(cl:in-package dyret_common-msg)


;//! \htmlinclude RevoluteState.msg.html

(cl:defclass <RevoluteState> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (set_point
    :reader set_point
    :initarg :set_point
    :type cl:float
    :initform 0.0)
   (error
    :reader error
    :initarg :error
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RevoluteState (<RevoluteState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RevoluteState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RevoluteState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_common-msg:<RevoluteState> is deprecated: use dyret_common-msg:RevoluteState instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:position-val is deprecated.  Use dyret_common-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:velocity-val is deprecated.  Use dyret_common-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:current-val is deprecated.  Use dyret_common-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:voltage-val is deprecated.  Use dyret_common-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:temperature-val is deprecated.  Use dyret_common-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'set_point-val :lambda-list '(m))
(cl:defmethod set_point-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:set_point-val is deprecated.  Use dyret_common-msg:set_point instead.")
  (set_point m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:error-val is deprecated.  Use dyret_common-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RevoluteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:status-val is deprecated.  Use dyret_common-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RevoluteState>)))
    "Constants for message type '<RevoluteState>"
  '((:STATUS_NOERROR . 0)
    (:STATUS_INSTRUCTION . 1)
    (:STATUS_OVERLOAD . 2)
    (:STATUS_CHECKSUM . 3)
    (:STATUS_RANGE . 4)
    (:STATUS_OVERHEATING . 5)
    (:STATUS_ANGLE_LIMIT . 6)
    (:STATUS_INPUT_VOLTAGE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RevoluteState)))
    "Constants for message type 'RevoluteState"
  '((:STATUS_NOERROR . 0)
    (:STATUS_INSTRUCTION . 1)
    (:STATUS_OVERLOAD . 2)
    (:STATUS_CHECKSUM . 3)
    (:STATUS_RANGE . 4)
    (:STATUS_OVERHEATING . 5)
    (:STATUS_ANGLE_LIMIT . 6)
    (:STATUS_INPUT_VOLTAGE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RevoluteState>) ostream)
  "Serializes a message object of type '<RevoluteState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'set_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RevoluteState>) istream)
  "Deserializes a message object of type '<RevoluteState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_point) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RevoluteState>)))
  "Returns string type for a message object of type '<RevoluteState>"
  "dyret_common/RevoluteState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RevoluteState)))
  "Returns string type for a message object of type 'RevoluteState"
  "dyret_common/RevoluteState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RevoluteState>)))
  "Returns md5sum for a message object of type '<RevoluteState>"
  "8a0202d7c351899cbb1b8a94d488c4ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RevoluteState)))
  "Returns md5sum for a message object of type 'RevoluteState"
  "8a0202d7c351899cbb1b8a94d488c4ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RevoluteState>)))
  "Returns full string definition for message of type '<RevoluteState>"
  (cl:format cl:nil "# This message represents the state of a single revolute joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%float32 velocity~%float32 current~%~%# Physical state~%float32 voltage~%float32 temperature~%~%# Controller state~%float32 set_point~%float32 error~%~%# Joint status:~%uint8 status~%~%uint8 STATUS_NOERROR       = 0~%uint8 STATUS_INSTRUCTION   = 1~%uint8 STATUS_OVERLOAD      = 2~%uint8 STATUS_CHECKSUM      = 3~%uint8 STATUS_RANGE         = 4~%uint8 STATUS_OVERHEATING   = 5~%uint8 STATUS_ANGLE_LIMIT   = 6~%uint8 STATUS_INPUT_VOLTAGE = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RevoluteState)))
  "Returns full string definition for message of type 'RevoluteState"
  (cl:format cl:nil "# This message represents the state of a single revolute joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%float32 velocity~%float32 current~%~%# Physical state~%float32 voltage~%float32 temperature~%~%# Controller state~%float32 set_point~%float32 error~%~%# Joint status:~%uint8 status~%~%uint8 STATUS_NOERROR       = 0~%uint8 STATUS_INSTRUCTION   = 1~%uint8 STATUS_OVERLOAD      = 2~%uint8 STATUS_CHECKSUM      = 3~%uint8 STATUS_RANGE         = 4~%uint8 STATUS_OVERHEATING   = 5~%uint8 STATUS_ANGLE_LIMIT   = 6~%uint8 STATUS_INPUT_VOLTAGE = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RevoluteState>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RevoluteState>))
  "Converts a ROS message object to a list"
  (cl:list 'RevoluteState
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':current (current msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':set_point (set_point msg))
    (cl:cons ':error (error msg))
    (cl:cons ':status (status msg))
))
