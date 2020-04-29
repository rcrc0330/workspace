;; Auto-generated. Do not edit!


(when (boundp 'kalman::matrix6)
  (if (not (find-package "KALMAN"))
    (make-package "KALMAN"))
  (shadow 'matrix6 (find-package "KALMAN")))
(unless (find-package "KALMAN::MATRIX6")
  (make-package "KALMAN::MATRIX6"))

(in-package "ROS")
;;//! \htmlinclude matrix6.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kalman::matrix6
  :super ros::object
  :slots (_header _r1 _r2 _r3 _r4 _r5 _r6 ))

(defmethod kalman::matrix6
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:r1 __r1) (instance kalman::vector9 :init))
    ((:r2 __r2) (instance kalman::vector9 :init))
    ((:r3 __r3) (instance kalman::vector9 :init))
    ((:r4 __r4) (instance kalman::vector9 :init))
    ((:r5 __r5) (instance kalman::vector9 :init))
    ((:r6 __r6) (instance kalman::vector9 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _r1 __r1)
   (setq _r2 __r2)
   (setq _r3 __r3)
   (setq _r4 __r4)
   (setq _r5 __r5)
   (setq _r6 __r6)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:r1
   (&rest __r1)
   (if (keywordp (car __r1))
       (send* _r1 __r1)
     (progn
       (if __r1 (setq _r1 (car __r1)))
       _r1)))
  (:r2
   (&rest __r2)
   (if (keywordp (car __r2))
       (send* _r2 __r2)
     (progn
       (if __r2 (setq _r2 (car __r2)))
       _r2)))
  (:r3
   (&rest __r3)
   (if (keywordp (car __r3))
       (send* _r3 __r3)
     (progn
       (if __r3 (setq _r3 (car __r3)))
       _r3)))
  (:r4
   (&rest __r4)
   (if (keywordp (car __r4))
       (send* _r4 __r4)
     (progn
       (if __r4 (setq _r4 (car __r4)))
       _r4)))
  (:r5
   (&rest __r5)
   (if (keywordp (car __r5))
       (send* _r5 __r5)
     (progn
       (if __r5 (setq _r5 (car __r5)))
       _r5)))
  (:r6
   (&rest __r6)
   (if (keywordp (car __r6))
       (send* _r6 __r6)
     (progn
       (if __r6 (setq _r6 (car __r6)))
       _r6)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; kalman/vector9 _r1
    (send _r1 :serialization-length)
    ;; kalman/vector9 _r2
    (send _r2 :serialization-length)
    ;; kalman/vector9 _r3
    (send _r3 :serialization-length)
    ;; kalman/vector9 _r4
    (send _r4 :serialization-length)
    ;; kalman/vector9 _r5
    (send _r5 :serialization-length)
    ;; kalman/vector9 _r6
    (send _r6 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; kalman/vector9 _r1
       (send _r1 :serialize s)
     ;; kalman/vector9 _r2
       (send _r2 :serialize s)
     ;; kalman/vector9 _r3
       (send _r3 :serialize s)
     ;; kalman/vector9 _r4
       (send _r4 :serialize s)
     ;; kalman/vector9 _r5
       (send _r5 :serialize s)
     ;; kalman/vector9 _r6
       (send _r6 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; kalman/vector9 _r1
     (send _r1 :deserialize buf ptr-) (incf ptr- (send _r1 :serialization-length))
   ;; kalman/vector9 _r2
     (send _r2 :deserialize buf ptr-) (incf ptr- (send _r2 :serialization-length))
   ;; kalman/vector9 _r3
     (send _r3 :deserialize buf ptr-) (incf ptr- (send _r3 :serialization-length))
   ;; kalman/vector9 _r4
     (send _r4 :deserialize buf ptr-) (incf ptr- (send _r4 :serialization-length))
   ;; kalman/vector9 _r5
     (send _r5 :deserialize buf ptr-) (incf ptr- (send _r5 :serialization-length))
   ;; kalman/vector9 _r6
     (send _r6 :deserialize buf ptr-) (incf ptr- (send _r6 :serialization-length))
   ;;
   self)
  )

(setf (get kalman::matrix6 :md5sum-) "699fb7d217df09274ee066bff5a81e6d")
(setf (get kalman::matrix6 :datatype-) "kalman/matrix6")
(setf (get kalman::matrix6 :definition-)
      "Header header

vector9 r1
vector9 r2
vector9 r3
vector9 r4
vector9 r5
vector9 r6

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: kalman/vector9
float64 m1
float64 m2
float64 m3
float64 m4
float64 m5
float64 m6
float64 m7
float64 m8
float64 m9

")



(provide :kalman/matrix6 "699fb7d217df09274ee066bff5a81e6d")


