;; Auto-generated. Do not edit!


(when (boundp 'kalman::vector6)
  (if (not (find-package "KALMAN"))
    (make-package "KALMAN"))
  (shadow 'vector6 (find-package "KALMAN")))
(unless (find-package "KALMAN::VECTOR6")
  (make-package "KALMAN::VECTOR6"))

(in-package "ROS")
;;//! \htmlinclude vector6.msg.html


(defclass kalman::vector6
  :super ros::object
  :slots (_m1 _m2 _m3 _m4 _m5 _m6 ))

(defmethod kalman::vector6
  (:init
   (&key
    ((:m1 __m1) 0.0)
    ((:m2 __m2) 0.0)
    ((:m3 __m3) 0.0)
    ((:m4 __m4) 0.0)
    ((:m5 __m5) 0.0)
    ((:m6 __m6) 0.0)
    )
   (send-super :init)
   (setq _m1 (float __m1))
   (setq _m2 (float __m2))
   (setq _m3 (float __m3))
   (setq _m4 (float __m4))
   (setq _m5 (float __m5))
   (setq _m6 (float __m6))
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
   ;;
   self)
  )

(setf (get kalman::vector6 :md5sum-) "b0972f5571e47e4faf8f68d08a868fe1")
(setf (get kalman::vector6 :datatype-) "kalman/vector6")
(setf (get kalman::vector6 :definition-)
      "float64 m1
float64 m2
float64 m3
float64 m4
float64 m5
float64 m6

")



(provide :kalman/vector6 "b0972f5571e47e4faf8f68d08a868fe1")


