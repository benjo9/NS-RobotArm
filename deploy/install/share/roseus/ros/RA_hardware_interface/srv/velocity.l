;; Auto-generated. Do not edit!


(when (boundp 'RA_hardware_interface::velocity)
  (if (not (find-package "RA_HARDWARE_INTERFACE"))
    (make-package "RA_HARDWARE_INTERFACE"))
  (shadow 'velocity (find-package "RA_HARDWARE_INTERFACE")))
(unless (find-package "RA_HARDWARE_INTERFACE::VELOCITY")
  (make-package "RA_HARDWARE_INTERFACE::VELOCITY"))
(unless (find-package "RA_HARDWARE_INTERFACE::VELOCITYREQUEST")
  (make-package "RA_HARDWARE_INTERFACE::VELOCITYREQUEST"))
(unless (find-package "RA_HARDWARE_INTERFACE::VELOCITYRESPONSE")
  (make-package "RA_HARDWARE_INTERFACE::VELOCITYRESPONSE"))

(in-package "ROS")





(defclass RA_hardware_interface::velocityRequest
  :super ros::object
  :slots (_axis _value ))

(defmethod RA_hardware_interface::velocityRequest
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

(defclass RA_hardware_interface::velocityResponse
  :super ros::object
  :slots (_result ))

(defmethod RA_hardware_interface::velocityResponse
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

(defclass RA_hardware_interface::velocity
  :super ros::object
  :slots ())

(setf (get RA_hardware_interface::velocity :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get RA_hardware_interface::velocity :datatype-) "RA_hardware_interface/velocity")
(setf (get RA_hardware_interface::velocity :request) RA_hardware_interface::velocityRequest)
(setf (get RA_hardware_interface::velocity :response) RA_hardware_interface::velocityResponse)

(defmethod RA_hardware_interface::velocityRequest
  (:response () (instance RA_hardware_interface::velocityResponse :init)))

(setf (get RA_hardware_interface::velocityRequest :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get RA_hardware_interface::velocityRequest :datatype-) "RA_hardware_interface/velocityRequest")
(setf (get RA_hardware_interface::velocityRequest :definition-)
      "
int16 axis
int32 value
---

bool result

")

(setf (get RA_hardware_interface::velocityResponse :md5sum-) "6f5723450e3c67d0d72065dca6e91464")
(setf (get RA_hardware_interface::velocityResponse :datatype-) "RA_hardware_interface/velocityResponse")
(setf (get RA_hardware_interface::velocityResponse :definition-)
      "
int16 axis
int32 value
---

bool result

")



(provide :RA_hardware_interface/velocity "6f5723450e3c67d0d72065dca6e91464")


