;; Auto-generated. Do not edit!


(when (boundp 'ODrive_Interface_test::driver)
  (if (not (find-package "ODRIVE_INTERFACE_TEST"))
    (make-package "ODRIVE_INTERFACE_TEST"))
  (shadow 'driver (find-package "ODRIVE_INTERFACE_TEST")))
(unless (find-package "ODRIVE_INTERFACE_TEST::DRIVER")
  (make-package "ODRIVE_INTERFACE_TEST::DRIVER"))
(unless (find-package "ODRIVE_INTERFACE_TEST::DRIVERREQUEST")
  (make-package "ODRIVE_INTERFACE_TEST::DRIVERREQUEST"))
(unless (find-package "ODRIVE_INTERFACE_TEST::DRIVERRESPONSE")
  (make-package "ODRIVE_INTERFACE_TEST::DRIVERRESPONSE"))

(in-package "ROS")





(defclass ODrive_Interface_test::driverRequest
  :super ros::object
  :slots (_axis _value ))

(defmethod ODrive_Interface_test::driverRequest
  (:init
   (&key
    ((:axis __axis) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _axis (round __axis))
   (setq _value (round __value))
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _axis
    1
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _axis
       (write-byte _axis s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _axis
     (setq _axis (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _axis 127) (setq _axis (- _axis 256)))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ODrive_Interface_test::driverResponse
  :super ros::object
  :slots (_result ))

(defmethod ODrive_Interface_test::driverResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ODrive_Interface_test::driver
  :super ros::object
  :slots ())

(setf (get ODrive_Interface_test::driver :md5sum-) "347021bed28fd1a72ae61bd0a2e98e9a")
(setf (get ODrive_Interface_test::driver :datatype-) "ODrive_Interface_test/driver")
(setf (get ODrive_Interface_test::driver :request) ODrive_Interface_test::driverRequest)
(setf (get ODrive_Interface_test::driver :response) ODrive_Interface_test::driverResponse)

(defmethod ODrive_Interface_test::driverRequest
  (:response () (instance ODrive_Interface_test::driverResponse :init)))

(setf (get ODrive_Interface_test::driverRequest :md5sum-) "347021bed28fd1a72ae61bd0a2e98e9a")
(setf (get ODrive_Interface_test::driverRequest :datatype-) "ODrive_Interface_test/driverRequest")
(setf (get ODrive_Interface_test::driverRequest :definition-)
      "
int8 axis
int32 value
---

bool result

")

(setf (get ODrive_Interface_test::driverResponse :md5sum-) "347021bed28fd1a72ae61bd0a2e98e9a")
(setf (get ODrive_Interface_test::driverResponse :datatype-) "ODrive_Interface_test/driverResponse")
(setf (get ODrive_Interface_test::driverResponse :definition-)
      "
int8 axis
int32 value
---

bool result

")



(provide :ODrive_Interface_test/driver "347021bed28fd1a72ae61bd0a2e98e9a")


