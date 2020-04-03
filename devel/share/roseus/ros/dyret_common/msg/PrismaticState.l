;; Auto-generated. Do not edit!


(when (boundp 'dyret_common::PrismaticState)
  (if (not (find-package "DYRET_COMMON"))
    (make-package "DYRET_COMMON"))
  (shadow 'PrismaticState (find-package "DYRET_COMMON")))
(unless (find-package "DYRET_COMMON::PRISMATICSTATE")
  (make-package "DYRET_COMMON::PRISMATICSTATE"))

(in-package "ROS")
;;//! \htmlinclude PrismaticState.msg.html


(defclass dyret_common::PrismaticState
  :super ros::object
  :slots (_position _set_point _error ))

(defmethod dyret_common::PrismaticState
  (:init
   (&key
    ((:position __position) 0.0)
    ((:set_point __set_point) 0.0)
    ((:error __error) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   (setq _set_point (float __set_point))
   (setq _error (float __error))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:set_point
   (&optional __set_point)
   (if __set_point (setq _set_point __set_point)) _set_point)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; float32 _position
    4
    ;; float32 _set_point
    4
    ;; float32 _error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _set_point
       (sys::poke _set_point (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error
       (sys::poke _error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _set_point
     (setq _set_point (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error
     (setq _error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dyret_common::PrismaticState :md5sum-) "e64097716783a477a5eaca8bf59b2072")
(setf (get dyret_common::PrismaticState :datatype-) "dyret_common/PrismaticState")
(setf (get dyret_common::PrismaticState :definition-)
      "# This message represents the state of a single prismatic joint
# it is not meant to be used alone, but as a part of other
# messages, see 'State'.

# Joint state
float32 position

# Controller state
float32 set_point
float32 error

")



(provide :dyret_common/PrismaticState "e64097716783a477a5eaca8bf59b2072")


