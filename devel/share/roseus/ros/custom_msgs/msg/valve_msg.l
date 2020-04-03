;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::valve_msg)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'valve_msg (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::VALVE_MSG")
  (make-package "CUSTOM_MSGS::VALVE_MSG"))

(in-package "ROS")
;;//! \htmlinclude valve_msg.msg.html


(defclass custom_msgs::valve_msg
  :super ros::object
  :slots (_PWM_duty _PWM_freq _PWM_valve_nr ))

(defmethod custom_msgs::valve_msg
  (:init
   (&key
    ((:PWM_duty __PWM_duty) 0)
    ((:PWM_freq __PWM_freq) 0)
    ((:PWM_valve_nr __PWM_valve_nr) 0)
    )
   (send-super :init)
   (setq _PWM_duty (round __PWM_duty))
   (setq _PWM_freq (round __PWM_freq))
   (setq _PWM_valve_nr (round __PWM_valve_nr))
   self)
  (:PWM_duty
   (&optional __PWM_duty)
   (if __PWM_duty (setq _PWM_duty __PWM_duty)) _PWM_duty)
  (:PWM_freq
   (&optional __PWM_freq)
   (if __PWM_freq (setq _PWM_freq __PWM_freq)) _PWM_freq)
  (:PWM_valve_nr
   (&optional __PWM_valve_nr)
   (if __PWM_valve_nr (setq _PWM_valve_nr __PWM_valve_nr)) _PWM_valve_nr)
  (:serialization-length
   ()
   (+
    ;; uint8 _PWM_duty
    1
    ;; uint8 _PWM_freq
    1
    ;; uint8 _PWM_valve_nr
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _PWM_duty
       (write-byte _PWM_duty s)
     ;; uint8 _PWM_freq
       (write-byte _PWM_freq s)
     ;; uint8 _PWM_valve_nr
       (write-byte _PWM_valve_nr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _PWM_duty
     (setq _PWM_duty (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PWM_freq
     (setq _PWM_freq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PWM_valve_nr
     (setq _PWM_valve_nr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_msgs::valve_msg :md5sum-) "2365f6928f3a6bbdd43c68c9166e3c42")
(setf (get custom_msgs::valve_msg :datatype-) "custom_msgs/valve_msg")
(setf (get custom_msgs::valve_msg :definition-)
      "uint8 PWM_duty
uint8 PWM_freq
uint8 PWM_valve_nr

")



(provide :custom_msgs/valve_msg "2365f6928f3a6bbdd43c68c9166e3c42")


