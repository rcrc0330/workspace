; Auto-generated. Do not edit!


(cl:in-package kalman-msg)


;//! \htmlinclude matrix6.msg.html

(cl:defclass <matrix6> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (r1
    :reader r1
    :initarg :r1
    :type kalman-msg:vector9
    :initform (cl:make-instance 'kalman-msg:vector9))
   (r2
    :reader r2
    :initarg :r2
    :type kalman-msg:vector9
    :initform (cl:make-instance 'kalman-msg:vector9))
   (r3
    :reader r3
    :initarg :r3
    :type kalman-msg:vector9
    :initform (cl:make-instance 'kalman-msg:vector9))
   (r4
    :reader r4
    :initarg :r4
    :type kalman-msg:vector9
    :initform (cl:make-instance 'kalman-msg:vector9))
   (r5
    :reader r5
    :initarg :r5
    :type kalman-msg:vector9
    :initform (cl:make-instance 'kalman-msg:vector9))
   (r6
    :reader r6
    :initarg :r6
    :type kalman-msg:vector9
    :initform (cl:make-instance 'kalman-msg:vector9)))
)

(cl:defclass matrix6 (<matrix6>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <matrix6>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'matrix6)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kalman-msg:<matrix6> is deprecated: use kalman-msg:matrix6 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <matrix6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman-msg:header-val is deprecated.  Use kalman-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'r1-val :lambda-list '(m))
(cl:defmethod r1-val ((m <matrix6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman-msg:r1-val is deprecated.  Use kalman-msg:r1 instead.")
  (r1 m))

(cl:ensure-generic-function 'r2-val :lambda-list '(m))
(cl:defmethod r2-val ((m <matrix6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman-msg:r2-val is deprecated.  Use kalman-msg:r2 instead.")
  (r2 m))

(cl:ensure-generic-function 'r3-val :lambda-list '(m))
(cl:defmethod r3-val ((m <matrix6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman-msg:r3-val is deprecated.  Use kalman-msg:r3 instead.")
  (r3 m))

(cl:ensure-generic-function 'r4-val :lambda-list '(m))
(cl:defmethod r4-val ((m <matrix6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman-msg:r4-val is deprecated.  Use kalman-msg:r4 instead.")
  (r4 m))

(cl:ensure-generic-function 'r5-val :lambda-list '(m))
(cl:defmethod r5-val ((m <matrix6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman-msg:r5-val is deprecated.  Use kalman-msg:r5 instead.")
  (r5 m))

(cl:ensure-generic-function 'r6-val :lambda-list '(m))
(cl:defmethod r6-val ((m <matrix6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman-msg:r6-val is deprecated.  Use kalman-msg:r6 instead.")
  (r6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <matrix6>) ostream)
  "Serializes a message object of type '<matrix6>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r6) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <matrix6>) istream)
  "Deserializes a message object of type '<matrix6>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r6) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<matrix6>)))
  "Returns string type for a message object of type '<matrix6>"
  "kalman/matrix6")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'matrix6)))
  "Returns string type for a message object of type 'matrix6"
  "kalman/matrix6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<matrix6>)))
  "Returns md5sum for a message object of type '<matrix6>"
  "699fb7d217df09274ee066bff5a81e6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'matrix6)))
  "Returns md5sum for a message object of type 'matrix6"
  "699fb7d217df09274ee066bff5a81e6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<matrix6>)))
  "Returns full string definition for message of type '<matrix6>"
  (cl:format cl:nil "Header header~%~%vector9 r1~%vector9 r2~%vector9 r3~%vector9 r4~%vector9 r5~%vector9 r6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kalman/vector9~%float64 m1~%float64 m2~%float64 m3~%float64 m4~%float64 m5~%float64 m6~%float64 m7~%float64 m8~%float64 m9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'matrix6)))
  "Returns full string definition for message of type 'matrix6"
  (cl:format cl:nil "Header header~%~%vector9 r1~%vector9 r2~%vector9 r3~%vector9 r4~%vector9 r5~%vector9 r6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kalman/vector9~%float64 m1~%float64 m2~%float64 m3~%float64 m4~%float64 m5~%float64 m6~%float64 m7~%float64 m8~%float64 m9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <matrix6>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r6))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <matrix6>))
  "Converts a ROS message object to a list"
  (cl:list 'matrix6
    (cl:cons ':header (header msg))
    (cl:cons ':r1 (r1 msg))
    (cl:cons ':r2 (r2 msg))
    (cl:cons ':r3 (r3 msg))
    (cl:cons ':r4 (r4 msg))
    (cl:cons ':r5 (r5 msg))
    (cl:cons ':r6 (r6 msg))
))
