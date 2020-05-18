;; Auto-generated. Do not edit!


(when (boundp 'ODrive_Interface_test::velocity)
  (if (not (find-package "ODRIVE_INTERFACE_TEST"))
    (make-package "ODRIVE_INTERFACE_TEST"))
  (shadow 'velocity (find-package "ODRIVE_INTERFACE_TEST")))
(unless (find-package "ODRIVE_INTERFACE_TEST::VELOCITY")
  (make-package "ODRIVE_INTERFACE_TEST::VELOCITY"))
(unless (find-package "ODRIVE_INTERFACE_TEST::VELOCITYREQUEST")
  (make-package "ODRIVE_INTERFACE_TEST::VELOCITYREQUEST"))
(unless (find-package "ODRIVE_INTERFACE_TEST::VELOCITYRESPONSE")
  (make-package "ODRIVE_INTERFACE_TEST::VELOCITYRESPONSE"))

(in-package "ROS")





(defclass ODrive_Interface_test::velocityRequest
  :super ros::object
  :slots (_axis _value ))

(defmethod ODrive_Interface_test::velocityRequest
  (:init
   (&key
    ((:axis __axis) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _axis (round __axis))
   (setq _value (float __value))
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
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _axis
       (write-word _axis s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _axis
     (setq _axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ODrive_Interface_test::velocityResponse
  :super ros::object
  :slots (_result ))

(defmethod ODrive_Interface_test::velocityResponse
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

(defclass ODrive_Interface_test::velocity
  :super ros::object
  :slots ())

(setf (get ODrive_Interface_test::velocity :md5sum-) "6df2415227858f9be2d7131c3c0f5ed5")
(setf (get ODrive_Interface_test::velocity :datatype-) "ODrive_Interface_test/velocity")
(setf (get ODrive_Interface_test::velocity :request) ODrive_Interface_test::velocityRequest)
(setf (get ODrive_Interface_test::velocity :response) ODrive_Interface_test::velocityResponse)

(defmethod ODrive_Interface_test::velocityRequest
  (:response () (instance ODrive_Interface_test::velocityResponse :init)))

(setf (get ODrive_Interface_test::velocityRequest :md5sum-) "6df2415227858f9be2d7131c3c0f5ed5")
(setf (get ODrive_Interface_test::velocityRequest :datatype-) "ODrive_Interface_test/velocityRequest")
(setf (get ODrive_Interface_test::velocityRequest :definition-)
      "
int16 axis
float32 value
---

bool result

")

(setf (get ODrive_Interface_test::velocityResponse :md5sum-) "6df2415227858f9be2d7131c3c0f5ed5")
(setf (get ODrive_Interface_test::velocityResponse :datatype-) "ODrive_Interface_test/velocityResponse")
(setf (get ODrive_Interface_test::velocityResponse :definition-)
      "
int16 axis
float32 value
---

bool result

")



(provide :ODrive_Interface_test/velocity "6df2415227858f9be2d7131c3c0f5ed5")


