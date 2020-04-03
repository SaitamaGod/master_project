;; Auto-generated. Do not edit!


(when (boundp 'dyret_common::RevoluteState)
  (if (not (find-package "DYRET_COMMON"))
    (make-package "DYRET_COMMON"))
  (shadow 'RevoluteState (find-package "DYRET_COMMON")))
(unless (find-package "DYRET_COMMON::REVOLUTESTATE")
  (make-package "DYRET_COMMON::REVOLUTESTATE"))

(in-package "ROS")
;;//! \htmlinclude RevoluteState.msg.html


(intern "*STATUS_NOERROR*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_NOERROR* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_NOERROR* 0)
(intern "*STATUS_INSTRUCTION*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_INSTRUCTION* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_INSTRUCTION* 1)
(intern "*STATUS_OVERLOAD*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_OVERLOAD* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_OVERLOAD* 2)
(intern "*STATUS_CHECKSUM*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_CHECKSUM* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_CHECKSUM* 3)
(intern "*STATUS_RANGE*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_RANGE* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_RANGE* 4)
(intern "*STATUS_OVERHEATING*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_OVERHEATING* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_OVERHEATING* 5)
(intern "*STATUS_ANGLE_LIMIT*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_ANGLE_LIMIT* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_ANGLE_LIMIT* 6)
(intern "*STATUS_INPUT_VOLTAGE*" (find-package "DYRET_COMMON::REVOLUTESTATE"))
(shadow '*STATUS_INPUT_VOLTAGE* (find-package "DYRET_COMMON::REVOLUTESTATE"))
(defconstant dyret_common::RevoluteState::*STATUS_INPUT_VOLTAGE* 7)
(defclass dyret_common::RevoluteState
  :super ros::object
  :slots (_position _velocity _current _voltage _temperature _set_point _error _status ))

(defmethod dyret_common::RevoluteState
  (:init
   (&key
    ((:position __position) 0.0)
    ((:velocity __velocity) 0.0)
    ((:current __current) 0.0)
    ((:voltage __voltage) 0.0)
    ((:temperature __temperature) 0.0)
    ((:set_point __set_point) 0.0)
    ((:error __error) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _position (float __position))
   (setq _velocity (float __velocity))
   (setq _current (float __current))
   (setq _voltage (float __voltage))
   (setq _temperature (float __temperature))
   (setq _set_point (float __set_point))
   (setq _error (float __error))
   (setq _status (round __status))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:set_point
   (&optional __set_point)
   (if __set_point (setq _set_point __set_point)) _set_point)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float32 _position
    4
    ;; float32 _velocity
    4
    ;; float32 _current
    4
    ;; float32 _voltage
    4
    ;; float32 _temperature
    4
    ;; float32 _set_point
    4
    ;; float32 _error
    4
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _set_point
       (sys::poke _set_point (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error
       (sys::poke _error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _set_point
     (setq _set_point (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error
     (setq _error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dyret_common::RevoluteState :md5sum-) "8a0202d7c351899cbb1b8a94d488c4ce")
(setf (get dyret_common::RevoluteState :datatype-) "dyret_common/RevoluteState")
(setf (get dyret_common::RevoluteState :definition-)
      "# This message represents the state of a single revolute joint
# it is not meant to be used alone, but as a part of other
# messages, see 'State'.

# Joint state
float32 position
float32 velocity
float32 current

# Physical state
float32 voltage
float32 temperature

# Controller state
float32 set_point
float32 error

# Joint status:
uint8 status

uint8 STATUS_NOERROR       = 0
uint8 STATUS_INSTRUCTION   = 1
uint8 STATUS_OVERLOAD      = 2
uint8 STATUS_CHECKSUM      = 3
uint8 STATUS_RANGE         = 4
uint8 STATUS_OVERHEATING   = 5
uint8 STATUS_ANGLE_LIMIT   = 6
uint8 STATUS_INPUT_VOLTAGE = 7

")



(provide :dyret_common/RevoluteState "8a0202d7c351899cbb1b8a94d488c4ce")


