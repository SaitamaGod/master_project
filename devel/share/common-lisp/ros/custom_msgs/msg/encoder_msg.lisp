; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude encoder_msg.msg.html

(cl:defclass <encoder_msg> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass encoder_msg (<encoder_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <encoder_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'encoder_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<encoder_msg> is deprecated: use custom_msgs-msg:encoder_msg instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <encoder_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:pos-val is deprecated.  Use custom_msgs-msg:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <encoder_msg>) ostream)
  "Serializes a message object of type '<encoder_msg>"
  (cl:let* ((signed (cl:slot-value msg 'pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <encoder_msg>) istream)
  "Deserializes a message object of type '<encoder_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<encoder_msg>)))
  "Returns string type for a message object of type '<encoder_msg>"
  "custom_msgs/encoder_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'encoder_msg)))
  "Returns string type for a message object of type 'encoder_msg"
  "custom_msgs/encoder_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<encoder_msg>)))
  "Returns md5sum for a message object of type '<encoder_msg>"
  "ff6a9630c81cddcd0e429fac19f3bfaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'encoder_msg)))
  "Returns md5sum for a message object of type 'encoder_msg"
  "ff6a9630c81cddcd0e429fac19f3bfaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<encoder_msg>)))
  "Returns full string definition for message of type '<encoder_msg>"
  (cl:format cl:nil "int16 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'encoder_msg)))
  "Returns full string definition for message of type 'encoder_msg"
  (cl:format cl:nil "int16 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <encoder_msg>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <encoder_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'encoder_msg
    (cl:cons ':pos (pos msg))
))
