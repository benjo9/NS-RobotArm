;; Auto-generated. Do not edit!


(when (boundp 'RA_hardware_interface::requested_state)
  (if (not (find-package "RA_HARDWARE_INTERFACE"))
    (make-package "RA_HARDWARE_INTERFACE"))
  (shadow 'requested_state (find-package "RA_HARDWARE_INTERFACE")))
(unless (find-package "RA_HARDWARE_INTERFACE::REQUESTED_STATE")
  (make-package "RA_HARDWARE_INTERFACE::REQUESTED_STATE"))
(unless (find-package "RA_HARDWARE_INTERFACE::REQUESTED_STATEREQUEST")
  (make-package "RA_HARDWARE_INTERFACE::REQUESTED_STATEREQUEST"))
(unless (find-package "RA_HARDWARE_INTERFACE::REQUESTED_STATERESPONSE")
  (make-package "RA_HARDWARE_INTERFACE::REQUESTED_STATERESPONSE"))

(in-package "ROS")





(defclass RA_hardware_interface::requested_stateRequest
  :super ros::object
  :slots (_axis _requested_state ))

(defmethod RA_hardware_interface::requested_stateRequest
  (:init
   (&key
    ((:axis __axis) 0)
    ((:requested_state __requested_state) 0)
    )
   (send-super :init)
   (setq _axis (round __axis))
   (setq _requested_state (round __requested_state))
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:requested_state
   (&optional __requested_state)
   (if __requested_state (setq _requested_state __requested_state)) _requested_state)
  (:serialization-length
   ()
   (+
    ;; int16 _axis
    2
    ;; int16 _requested_state
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _axis
       (write-word _axis s)
     ;; int16 _requested_state
       (write-word _requested_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _axis
     (setq _axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _requested_state
     (setq _requested_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass RA_hardware_interface::requested_stateResponse
  :super ros::object
  :slots (_result ))

(defmethod RA_hardware_interface::requested_stateResponse
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

(defclass RA_hardware_interface::requested_state
  :super ros::object
  :slots ())

(setf (get RA_hardware_interface::requested_state :md5sum-) "b06410045851cc21cdfe462a30e6cdb3")
(setf (get RA_hardware_interface::requested_state :datatype-) "RA_hardware_interface/requested_state")
(setf (get RA_hardware_interface::requested_state :request) RA_hardware_interface::requested_stateRequest)
(setf (get RA_hardware_interface::requested_state :response) RA_hardware_interface::requested_stateResponse)

(defmethod RA_hardware_interface::requested_stateRequest
  (:response () (instance RA_hardware_interface::requested_stateResponse :init)))

(setf (get RA_hardware_interface::requested_stateRequest :md5sum-) "b06410045851cc21cdfe462a30e6cdb3")
(setf (get RA_hardware_interface::requested_stateRequest :datatype-) "RA_hardware_interface/requested_stateRequest")
(setf (get RA_hardware_interface::requested_stateRequest :definition-)
      "
int16 axis
int16 requested_state
---

bool result

")

(setf (get RA_hardware_interface::requested_stateResponse :md5sum-) "b06410045851cc21cdfe462a30e6cdb3")
(setf (get RA_hardware_interface::requested_stateResponse :datatype-) "RA_hardware_interface/requested_stateResponse")
(setf (get RA_hardware_interface::requested_stateResponse :definition-)
      "
int16 axis
int16 requested_state
---

bool result

")



(provide :RA_hardware_interface/requested_state "b06410045851cc21cdfe462a30e6cdb3")


