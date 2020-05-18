;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::driver)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'driver (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::DRIVER")
  (make-package "ROS_CONTROL_BOILERPLATE::DRIVER"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::DRIVERREQUEST")
  (make-package "ROS_CONTROL_BOILERPLATE::DRIVERREQUEST"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::DRIVERRESPONSE")
  (make-package "ROS_CONTROL_BOILERPLATE::DRIVERRESPONSE"))

(in-package "ROS")





(defclass ros_control_boilerplate::driverRequest
  :super ros::object
  :slots (_axis _value ))

(defmethod ros_control_boilerplate::driverRequest
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

(defclass ros_control_boilerplate::driverResponse
  :super ros::object
  :slots (_result ))

(defmethod ros_control_boilerplate::driverResponse
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

(defclass ros_control_boilerplate::driver
  :super ros::object
  :slots ())

(setf (get ros_control_boilerplate::driver :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get ros_control_boilerplate::driver :datatype-) "ros_control_boilerplate/driver")
(setf (get ros_control_boilerplate::driver :request) ros_control_boilerplate::driverRequest)
(setf (get ros_control_boilerplate::driver :response) ros_control_boilerplate::driverResponse)

(defmethod ros_control_boilerplate::driverRequest
  (:response () (instance ros_control_boilerplate::driverResponse :init)))

(setf (get ros_control_boilerplate::driverRequest :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get ros_control_boilerplate::driverRequest :datatype-) "ros_control_boilerplate/driverRequest")
(setf (get ros_control_boilerplate::driverRequest :definition-)
      "
int16 axis
int32 value
---

bool result

")

(setf (get ros_control_boilerplate::driverResponse :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get ros_control_boilerplate::driverResponse :datatype-) "ros_control_boilerplate/driverResponse")
(setf (get ros_control_boilerplate::driverResponse :definition-)
      "
int16 axis
int32 value
---

bool result

")



(provide :ros_control_boilerplate/driver "6f5723450e3c67d0d72065dca6e91464")


