; Auto-generated. Do not edit!


(cl:in-package dyret_common-msg)


;//! \htmlinclude PrismaticConfig.msg.html

(cl:defclass <PrismaticConfig> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PrismaticConfig (<PrismaticConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrismaticConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrismaticConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dyret_common-msg:<PrismaticConfig> is deprecated: use dyret_common-msg:PrismaticConfig instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <PrismaticConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:ids-val is deprecated.  Use dyret_common-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <PrismaticConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:parameters-val is deprecated.  Use dyret_common-msg:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PrismaticConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dyret_common-msg:type-val is deprecated.  Use dyret_common-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PrismaticConfig>)))
    "Constants for message type '<PrismaticConfig>"
  '((:TYPE_SET_PID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PrismaticConfig)))
    "Constants for message type 'PrismaticConfig"
  '((:TYPE_SET_PID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrismaticConfig>) ostream)
  "Serializes a message object of type '<PrismaticConfig>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'parameters))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrismaticConfig>) istream)
  "Deserializes a message object of type '<PrismaticConfig>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrismaticConfig>)))
  "Returns string type for a message object of type '<PrismaticConfig>"
  "dyret_common/PrismaticConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrismaticConfig)))
  "Returns string type for a message object of type 'PrismaticConfig"
  "dyret_common/PrismaticConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrismaticConfig>)))
  "Returns md5sum for a message object of type '<PrismaticConfig>"
  "3f37ca691727ac5015b55556007febdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrismaticConfig)))
  "Returns md5sum for a message object of type 'PrismaticConfig"
  "3f37ca691727ac5015b55556007febdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrismaticConfig>)))
  "Returns full string definition for message of type '<PrismaticConfig>"
  (cl:format cl:nil "# This message represents the configuration of the prismatic joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_PID = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrismaticConfig)))
  "Returns full string definition for message of type 'PrismaticConfig"
  (cl:format cl:nil "# This message represents the configuration of the prismatic joints~%#~%# - The configuration is applied to all joints if the id array is empty.~%# - All parameters are added sequentially in the parameter field, so~%# the length of this array may be a multiple of the number of joints in~%# cases where there are more than one parameter per joint needed~%~%# Joint IDs~%uint8[] ids~%~%# Configuration parameters~%float64[] parameters~%~%# Configuration type~%uint8 type~%~%uint8 TYPE_SET_PID = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrismaticConfig>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrismaticConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'PrismaticConfig
    (cl:cons ':ids (ids msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':type (type msg))
))
