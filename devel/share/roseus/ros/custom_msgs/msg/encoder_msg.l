;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::encoder_msg)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'encoder_msg (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::ENCODER_MSG")
  (make-package "CUSTOM_MSGS::ENCODER_MSG"))

(in-package "ROS")
;;//! \htmlinclude encoder_msg.msg.html


(defclass custom_msgs::encoder_msg
  :super ros::object
  :slots (_pos ))

(defmethod custom_msgs::encoder_msg
  (:init
   (&key
    ((:pos __pos) 0)
    )
   (send-super :init)
   (setq _pos (round __pos))
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; int16 _pos
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _pos
       (write-word _pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _pos
     (setq _pos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get custom_msgs::encoder_msg :md5sum-) "ff6a9630c81cddcd0e429fac19f3bfaa")
(setf (get custom_msgs::encoder_msg :datatype-) "custom_msgs/encoder_msg")
(setf (get custom_msgs::encoder_msg :definition-)
      "int16 pos

")



(provide :custom_msgs/encoder_msg "ff6a9630c81cddcd0e429fac19f3bfaa")


