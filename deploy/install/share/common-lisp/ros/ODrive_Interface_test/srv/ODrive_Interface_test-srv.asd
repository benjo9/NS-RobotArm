
(cl:in-package :asdf)

(defsystem "ODrive_Interface_test-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "closed_loop" :depends-on ("_package_closed_loop"))
    (:file "_package_closed_loop" :depends-on ("_package"))
    (:file "driver" :depends-on ("_package_driver"))
    (:file "_package_driver" :depends-on ("_package"))
  ))