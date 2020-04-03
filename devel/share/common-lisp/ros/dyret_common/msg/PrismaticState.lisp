; Auto-generated. Do not edit!


(cl:in-package dyret_common-msg)


;//! \htmlinclude PrismaticState.msg.html

(cl:defclass <PrismaticState> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
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
    :initform 0.0))
)

(cl:defclass PrismaticState (<PrismaticState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrismaticState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrismaticState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_common-msg:<PrismaticState> is deprecated: use dyret_common-msg:PrismaticState instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PrismaticState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:position-val is deprecated.  Use dyret_common-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'set_point-val :lambda-list '(m))
(cl:defmethod set_point-val ((m <PrismaticState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:set_point-val is deprecated.  Use dyret_common-msg:set_point instead.")
  (set_point m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <PrismaticState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:error-val is deprecated.  Use dyret_common-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrismaticState>) ostream)
  "Serializes a message object of type '<PrismaticState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrismaticState>) istream)
  "Deserializes a message object of type '<PrismaticState>"
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
    (cl:setf (cl:slot-value msg 'set_point) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrismaticState>)))
  "Returns string type for a message object of type '<PrismaticState>"
  "dyret_common/PrismaticState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrismaticState)))
  "Returns string type for a message object of type 'PrismaticState"
  "dyret_common/PrismaticState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrismaticState>)))
  "Returns md5sum for a message object of type '<PrismaticState>"
  "e64097716783a477a5eaca8bf59b2072")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrismaticState)))
  "Returns md5sum for a message object of type 'PrismaticState"
  "e64097716783a477a5eaca8bf59b2072")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrismaticState>)))
  "Returns full string definition for message of type '<PrismaticState>"
  (cl:format cl:nil "# This message represents the state of a single prismatic joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%~%# Controller state~%float32 set_point~%float32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrismaticState)))
  "Returns full string definition for message of type 'PrismaticState"
  (cl:format cl:nil "# This message represents the state of a single prismatic joint~%# it is not meant to be used alone, but as a part of other~%# messages, see 'State'.~%~%# Joint state~%float32 position~%~%# Controller state~%float32 set_point~%float32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrismaticState>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrismaticState>))
  "Converts a ROS message object to a list"
  (cl:list 'PrismaticState
    (cl:cons ':position (position msg))
    (cl:cons ':set_point (set_point msg))
    (cl:cons ':error (error msg))
))
