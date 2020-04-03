; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude valve_msg.msg.html

(cl:defclass <valve_msg> (roslisp-msg-protocol:ros-message)
  ((PWM_duty
    :reader PWM_duty
    :initarg :PWM_duty
    :type cl:fixnum
    :initform 0)
   (PWM_freq
    :reader PWM_freq
    :initarg :PWM_freq
    :type cl:fixnum
    :initform 0)
   (PWM_valve_nr
    :reader PWM_valve_nr
    :initarg :PWM_valve_nr
    :type cl:fixnum
    :initform 0))
)

(cl:defclass valve_msg (<valve_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <valve_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'valve_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<valve_msg> is deprecated: use custom_msgs-msg:valve_msg instead.")))

(cl:ensure-generic-function 'PWM_duty-val :lambda-list '(m))
(cl:defmethod PWM_duty-val ((m <valve_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:PWM_duty-val is deprecated.  Use custom_msgs-msg:PWM_duty instead.")
  (PWM_duty m))

(cl:ensure-generic-function 'PWM_freq-val :lambda-list '(m))
(cl:defmethod PWM_freq-val ((m <valve_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:PWM_freq-val is deprecated.  Use custom_msgs-msg:PWM_freq instead.")
  (PWM_freq m))

(cl:ensure-generic-function 'PWM_valve_nr-val :lambda-list '(m))
(cl:defmethod PWM_valve_nr-val ((m <valve_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:PWM_valve_nr-val is deprecated.  Use custom_msgs-msg:PWM_valve_nr instead.")
  (PWM_valve_nr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <valve_msg>) ostream)
  "Serializes a message object of type '<valve_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PWM_duty)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PWM_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PWM_valve_nr)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <valve_msg>) istream)
  "Deserializes a message object of type '<valve_msg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PWM_duty)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PWM_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PWM_valve_nr)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<valve_msg>)))
  "Returns string type for a message object of type '<valve_msg>"
  "custom_msgs/valve_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'valve_msg)))
  "Returns string type for a message object of type 'valve_msg"
  "custom_msgs/valve_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<valve_msg>)))
  "Returns md5sum for a message object of type '<valve_msg>"
  "2365f6928f3a6bbdd43c68c9166e3c42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'valve_msg)))
  "Returns md5sum for a message object of type 'valve_msg"
  "2365f6928f3a6bbdd43c68c9166e3c42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<valve_msg>)))
  "Returns full string definition for message of type '<valve_msg>"
  (cl:format cl:nil "uint8 PWM_duty~%uint8 PWM_freq~%uint8 PWM_valve_nr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'valve_msg)))
  "Returns full string definition for message of type 'valve_msg"
  (cl:format cl:nil "uint8 PWM_duty~%uint8 PWM_freq~%uint8 PWM_valve_nr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <valve_msg>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <valve_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'valve_msg
    (cl:cons ':PWM_duty (PWM_duty msg))
    (cl:cons ':PWM_freq (PWM_freq msg))
    (cl:cons ':PWM_valve_nr (PWM_valve_nr msg))
))
