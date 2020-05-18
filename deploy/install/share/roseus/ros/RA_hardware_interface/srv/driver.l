;; Auto-generated. Do not edit!


(when (boundp 'RA_hardware_interface::driver)
  (if (not (find-package "RA_HARDWARE_INTERFACE"))
    (make-package "RA_HARDWARE_INTERFACE"))
  (shadow 'driver (find-package "RA_HARDWARE_INTERFACE")))
(unless (find-package "RA_HARDWARE_INTERFACE::DRIVER")
  (make-package "RA_HARDWARE_INTERFACE::DRIVER"))
(unless (find-package "RA_HARDWARE_INTERFACE::DRIVERREQUEST")
  (make-package "RA_HARDWARE_INTERFACE::DRIVERREQUEST"))
(unless (find-package "RA_HARDWARE_INTERFACE::DRIVERRESPONSE")
  (make-package "RA_HARDWARE_INTERFACE::DRIVERRESPONSE"))

(in-package "ROS")





(defclass RA_hardware_interface::driverRequest
  :super ros::object
  :slots (_axis _value ))

(defmethod RA_hardware_interface::driverRequest
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
    ;; int16 _axis
    2
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _axis
       (write-word _axis s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _axis
     (setq _axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass RA_hardware_interface::driverResponse
  :super ros::object
  :slots (_result ))

(defmethod RA_hardware_interface::driverResponse
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

(defclass RA_hardware_interface::driver
  :super ros::object
  :slots ())

(setf (get RA_hardware_interface::driver :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get RA_hardware_interface::driver :datatype-) "RA_hardware_interface/driver")
(setf (get RA_hardware_interface::driver :request) RA_hardware_interface::driverRequest)
(setf (get RA_hardware_interface::driver :response) RA_hardware_interface::driverResponse)

(defmethod RA_hardware_interface::driverRequest
  (:response () (instance RA_hardware_interface::driverResponse :init)))

(setf (get RA_hardware_interface::driverRequest :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get RA_hardware_interface::driverRequest :datatype-) "RA_hardware_interface/driverRequest")
(setf (get RA_hardware_interface::driverRequest :definition-)
      "
int16 axis
int32 value
---

bool result

")

(setf (get RA_hardware_interface::driverResponse :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get RA_hardware_interface::driverResponse :datatype-) "RA_hardware_interface/driverResponse")
(setf (get RA_hardware_interface::driverResponse :definition-)
      "
int16 axis
int32 value
---

bool result

")



(provide :RA_hardware_interface/driver "6f5723450e3c67d0d72065dca6e91464")


