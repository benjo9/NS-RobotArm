
(cl:in-package :asdf)

(defsystem "ODrive_Interface_test-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "driver" :depends-on ("_package_driver"))
    (:file "_package_driver" :depends-on ("_package"))
    (:file "feedback" :depends-on ("_package_feedback"))
    (:file "_package_feedback" :depends-on ("_package"))
    (:file "requested_state" :depends-on ("_package_requested_state"))
    (:file "_package_requested_state" :depends-on ("_package"))
    (:file "velocity" :depends-on ("_package_velocity"))
    (:file "_package_velocity" :depends-on ("_package"))
  ))