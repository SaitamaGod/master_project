;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::TimerFeedback)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'TimerFeedback (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TIMERFEEDBACK")
  (make-package "BEGINNER_TUTORIALS::TIMERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TimerFeedback.msg.html


(defclass beginner_tutorials::TimerFeedback
  :super ros::object
  :slots (_time_elapsed _time_remaining ))

(defmethod beginner_tutorials::TimerFeedback
  (:init
   (&key
    ((:time_elapsed __time_elapsed) (instance ros::time :init))
    ((:time_remaining __time_remaining) (instance ros::time :init))
    )
   (send-super :init)
   (setq _time_elapsed __time_elapsed)
   (setq _time_remaining __time_remaining)
   self)
  (:time_elapsed
   (&optional __time_elapsed)
   (if __time_elapsed (setq _time_elapsed __time_elapsed)) _time_elapsed)
  (:time_remaining
   (&optional __time_remaining)
   (if __time_remaining (setq _time_remaining __time_remaining)) _time_remaining)
  (:serialization-length
   ()
   (+
    ;; duration _time_elapsed
    8
    ;; duration _time_remaining
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _time_elapsed
       (write-long (send _time_elapsed :sec) s) (write-long (send _time_elapsed :nsec) s)
     ;; duration _time_remaining
       (write-long (send _time_remaining :sec) s) (write-long (send _time_remaining :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _time_elapsed
     (send _time_elapsed :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_elapsed :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _time_remaining
     (send _time_remaining :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_remaining :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::TimerFeedback :md5sum-) "f7ef31d21e406bbd1f38a63801a29be7")
(setf (get beginner_tutorials::TimerFeedback :datatype-) "beginner_tutorials/TimerFeedback")
(setf (get beginner_tutorials::TimerFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

#Part 3: the feedback, to be sent periodically by the server during execution
duration time_elapsed
duration time_remaining


")



(provide :beginner_tutorials/TimerFeedback "f7ef31d21e406bbd1f38a63801a29be7")


