;; Auto-generated. Do not edit!


(when (boundp 'kalman::vector9)
  (if (not (find-package "KALMAN"))
    (make-package "KALMAN"))
  (shadow 'vector9 (find-package "KALMAN")))
(unless (find-package "KALMAN::VECTOR9")
  (make-package "KALMAN::VECTOR9"))

(in-package "ROS")
;;//! \htmlinclude vector9.msg.html


(defclass kalman::vector9
  :super ros::object
  :slots (_m1 _m2 _m3 _m4 _m5 _m6 _m7 _m8 _m9 ))

(defmethod kalman::vector9
  (:init
   (&key
    ((:m1 __m1) 0.0)
    ((:m2 __m2) 0.0)
    ((:m3 __m3) 0.0)
    ((:m4 __m4) 0.0)
    ((:m5 __m5) 0.0)
    ((:m6 __m6) 0.0)
    ((:m7 __m7) 0.0)
    ((:m8 __m8) 0.0)
    ((:m9 __m9) 0.0)
    )
   (send-super :init)
   (setq _m1 (float __m1))
   (setq _m2 (float __m2))
   (setq _m3 (float __m3))
   (setq _m4 (float __m4))
   (setq _m5 (float __m5))
   (setq _m6 (float __m6))
   (setq _m7 (float __m7))
   (setq _m8 (float __m8))
   (setq _m9 (float __m9))
   self)
  (:m1
   (&optional __m1)
   (if __m1 (setq _m1 __m1)) _m1)
  (:m2
   (&optional __m2)
   (if __m2 (setq _m2 __m2)) _m2)
  (:m3
   (&optional __m3)
   (if __m3 (setq _m3 __m3)) _m3)
  (:m4
   (&optional __m4)
   (if __m4 (setq _m4 __m4)) _m4)
  (:m5
   (&optional __m5)
   (if __m5 (setq _m5 __m5)) _m5)
  (:m6
   (&optional __m6)
   (if __m6 (setq _m6 __m6)) _m6)
  (:m7
   (&optional __m7)
   (if __m7 (setq _m7 __m7)) _m7)
  (:m8
   (&optional __m8)
   (if __m8 (setq _m8 __m8)) _m8)
  (:m9
   (&optional __m9)
   (if __m9 (setq _m9 __m9)) _m9)
  (:serialization-length
   ()
   (+
    ;; float64 _m1
    8
    ;; float64 _m2
    8
    ;; float64 _m3
    8
    ;; float64 _m4
    8
    ;; float64 _m5
    8
    ;; float64 _m6
    8
    ;; float64 _m7
    8
    ;; float64 _m8
    8
    ;; float64 _m9
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _m1
       (sys::poke _m1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m2
       (sys::poke _m2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m3
       (sys::poke _m3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m4
       (sys::poke _m4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m5
       (sys::poke _m5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m6
       (sys::poke _m6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m7
       (sys::poke _m7 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m8
       (sys::poke _m8 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m9
       (sys::poke _m9 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _m1
     (setq _m1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m2
     (setq _m2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m3
     (setq _m3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m4
     (setq _m4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m5
     (setq _m5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m6
     (setq _m6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m7
     (setq _m7 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m8
     (setq _m8 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m9
     (setq _m9 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kalman::vector9 :md5sum-) "13d161e27dab4d6e323137aa0417c879")
(setf (get kalman::vector9 :datatype-) "kalman/vector9")
(setf (get kalman::vector9 :definition-)
      "float64 m1
float64 m2
float64 m3
float64 m4
float64 m5
float64 m6
float64 m7
float64 m8
float64 m9

")



(provide :kalman/vector9 "13d161e27dab4d6e323137aa0417c879")


