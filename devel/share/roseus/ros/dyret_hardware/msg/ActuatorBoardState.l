;; Auto-generated. Do not edit!


(when (boundp 'dyret_hardware::ActuatorBoardState)
  (if (not (find-package "DYRET_HARDWARE"))
    (make-package "DYRET_HARDWARE"))
  (shadow 'ActuatorBoardState (find-package "DYRET_HARDWARE")))
(unless (find-package "DYRET_HARDWARE::ACTUATORBOARDSTATE")
  (make-package "DYRET_HARDWARE::ACTUATORBOARDSTATE"))

(in-package "ROS")
;;//! \htmlinclude ActuatorBoardState.msg.html


(defclass dyret_hardware::ActuatorBoardState
  :super ros::object
  :slots (_position ))

(defmethod dyret_hardware::ActuatorBoardState
  (:init
   (&key
    ((:position __position) (make-array 8 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float32[8] _position
    (* 4    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[8] _position
     (dotimes (i 8)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[8] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get dyret_hardware::ActuatorBoardState :md5sum-) "61a2e72fc291b8e237e79adac79aac78")
(setf (get dyret_hardware::ActuatorBoardState :datatype-) "dyret_hardware/ActuatorBoardState")
(setf (get dyret_hardware::ActuatorBoardState :definition-)
      "float32[8] position

")



(provide :dyret_hardware/ActuatorBoardState "61a2e72fc291b8e237e79adac79aac78")


