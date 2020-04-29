
(cl:in-package :asdf)

(defsystem "kalman-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "matrix6" :depends-on ("_package_matrix6"))
    (:file "_package_matrix6" :depends-on ("_package"))
    (:file "vector9" :depends-on ("_package_vector9"))
    (:file "_package_vector9" :depends-on ("_package"))
  ))