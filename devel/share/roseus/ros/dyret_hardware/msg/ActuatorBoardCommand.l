;; Auto-generated. Do not edit!


(when (boundp 'dyret_hardware::ActuatorBoardCommand)
  (if (not (find-package "DYRET_HARDWARE"))
    (make-package "DYRET_HARDWARE"))
  (shadow 'ActuatorBoardCommand (find-package "DYRET_HARDWARE")))
(unless (find-package "DYRET_HARDWARE::ACTUATORBOARDCOMMAND")
  (make-package "DYRET_HARDWARE::ACTUATORBOARDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ActuatorBoardCommand.msg.html


(defclass dyret_hardware::ActuatorBoardCommand
  :super ros::object
  :slots (_length ))

(defmethod dyret_hardware::ActuatorBoardCommand
  (:init
   (&key
    ((:length __length) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _length __length)
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; float32[] _length
    (* 4    (length _length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _length
     (write-long (length _length) s)
     (dotimes (i (length _length))
       (sys::poke (elt _length i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _length
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _length (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _length i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dyret_hardware::ActuatorBoardCommand :md5sum-) "3d38d684f1da83a97953821045e0f85c")
(setf (get dyret_hardware::ActuatorBoardCommand :datatype-) "dyret_hardware/ActuatorBoardCommand")
(setf (get dyret_hardware::ActuatorBoardCommand :definition-)
      "# Length either specifies:
#   One length for all links
#   Two lengths - the first for all femurs, the second for all tibias
#   Individual lengths for each actuator

float32[] length

")



(provide :dyret_hardware/ActuatorBoardCommand "3d38d684f1da83a97953821045e0f85c")


