;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::servo_msg)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'servo_msg (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::SERVO_MSG")
  (make-package "CUSTOM_MSGS::SERVO_MSG"))

(in-package "ROS")
;;//! \htmlinclude servo_msg.msg.html


(defclass custom_msgs::servo_msg
  :super ros::object
  :slots (_id _pos _speed ))

(defmethod custom_msgs::servo_msg
  (:init
   (&key
    ((:id __id) 0)
    ((:pos __pos) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _pos (round __pos))
   (setq _speed (round __speed))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; int16 _pos
    2
    ;; int16 _speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; int16 _pos
       (write-word _pos s)
     ;; int16 _speed
       (write-word _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; int16 _pos
     (setq _pos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get custom_msgs::servo_msg :md5sum-) "4746890200c2a955023cca7b744b47b3")
(setf (get custom_msgs::servo_msg :datatype-) "custom_msgs/servo_msg")
(setf (get custom_msgs::servo_msg :definition-)
      "int8 id
int16 pos
int16 speed

")



(provide :custom_msgs/servo_msg "4746890200c2a955023cca7b744b47b3")


