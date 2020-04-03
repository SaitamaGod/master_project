; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude servo_msg.msg.html

(cl:defclass <servo_msg> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass servo_msg (<servo_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servo_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servo_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<servo_msg> is deprecated: use custom_msgs-msg:servo_msg instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <servo_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:id-val is deprecated.  Use custom_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <servo_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:pos-val is deprecated.  Use custom_msgs-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <servo_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:speed-val is deprecated.  Use custom_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servo_msg>) ostream)
  "Serializes a message object of type '<servo_msg>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servo_msg>) istream)
  "Deserializes a message object of type '<servo_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servo_msg>)))
  "Returns string type for a message object of type '<servo_msg>"
  "custom_msgs/servo_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servo_msg)))
  "Returns string type for a message object of type 'servo_msg"
  "custom_msgs/servo_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servo_msg>)))
  "Returns md5sum for a message object of type '<servo_msg>"
  "4746890200c2a955023cca7b744b47b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servo_msg)))
  "Returns md5sum for a message object of type 'servo_msg"
  "4746890200c2a955023cca7b744b47b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servo_msg>)))
  "Returns full string definition for message of type '<servo_msg>"
  (cl:format cl:nil "int8 id~%int16 pos~%int16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servo_msg)))
  "Returns full string definition for message of type 'servo_msg"
  (cl:format cl:nil "int8 id~%int16 pos~%int16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servo_msg>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servo_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'servo_msg
    (cl:cons ':id (id msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':speed (speed msg))
))
