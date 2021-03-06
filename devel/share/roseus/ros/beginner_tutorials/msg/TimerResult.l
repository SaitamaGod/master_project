;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::TimerResult)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'TimerResult (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TIMERRESULT")
  (make-package "BEGINNER_TUTORIALS::TIMERRESULT"))

(in-package "ROS")
;;//! \htmlinclude TimerResult.msg.html


(defclass beginner_tutorials::TimerResult
  :super ros::object
  :slots (_time_elapsed _updates_sent ))

(defmethod beginner_tutorials::TimerResult
  (:init
   (&key
    ((:time_elapsed __time_elapsed) (instance ros::time :init))
    ((:updates_sent __updates_sent) 0)
    )
   (send-super :init)
   (setq _time_elapsed __time_elapsed)
   (setq _updates_sent (round __updates_sent))
   self)
  (:time_elapsed
   (&optional __time_elapsed)
   (if __time_elapsed (setq _time_elapsed __time_elapsed)) _time_elapsed)
  (:updates_sent
   (&optional __updates_sent)
   (if __updates_sent (setq _updates_sent __updates_sent)) _updates_sent)
  (:serialization-length
   ()
   (+
    ;; duration _time_elapsed
    8
    ;; uint32 _updates_sent
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _time_elapsed
       (write-long (send _time_elapsed :sec) s) (write-long (send _time_elapsed :nsec) s)
     ;; uint32 _updates_sent
       (write-long _updates_sent s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _time_elapsed
     (send _time_elapsed :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_elapsed :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _updates_sent
     (setq _updates_sent (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::TimerResult :md5sum-) "8227810e22df8077dd49231152c9e200")
(setf (get beginner_tutorials::TimerResult :datatype-) "beginner_tutorials/TimerResult")
(setf (get beginner_tutorials::TimerResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

#Part 2: the result, to be sent by server upon completion

duration time_elapsed
uint32 updates_sent

")



(provide :beginner_tutorials/TimerResult "8227810e22df8077dd49231152c9e200")


