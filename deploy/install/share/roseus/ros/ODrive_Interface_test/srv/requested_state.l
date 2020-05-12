;; Auto-generated. Do not edit!


(when (boundp 'ODrive_Interface_test::requested_state)
  (if (not (find-package "ODRIVE_INTERFACE_TEST"))
    (make-package "ODRIVE_INTERFACE_TEST"))
  (shadow 'requested_state (find-package "ODRIVE_INTERFACE_TEST")))
(unless (find-package "ODRIVE_INTERFACE_TEST::REQUESTED_STATE")
  (make-package "ODRIVE_INTERFACE_TEST::REQUESTED_STATE"))
(unless (find-package "ODRIVE_INTERFACE_TEST::REQUESTED_STATEREQUEST")
  (make-package "ODRIVE_INTERFACE_TEST::REQUESTED_STATEREQUEST"))
(unless (find-package "ODRIVE_INTERFACE_TEST::REQUESTED_STATERESPONSE")
  (make-package "ODRIVE_INTERFACE_TEST::REQUESTED_STATERESPONSE"))

(in-package "ROS")





(defclass ODrive_Interface_test::requested_stateRequest
  :super ros::object
  :slots (_axis _requested_state ))

(defmethod ODrive_Interface_test::requested_stateRequest
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

(defclass ODrive_Interface_test::requested_stateResponse
  :super ros::object
  :slots (_result ))

(defmethod ODrive_Interface_test::requested_stateResponse
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

(defclass ODrive_Interface_test::requested_state
  :super ros::object
  :slots ())

(setf (get ODrive_Interface_test::requested_state :md5sum-) "b06410045851cc21cdfe462a30e6cdb3")
(setf (get ODrive_Interface_test::requested_state :datatype-) "ODrive_Interface_test/requested_state")
(setf (get ODrive_Interface_test::requested_state :request) ODrive_Interface_test::requested_stateRequest)
(setf (get ODrive_Interface_test::requested_state :response) ODrive_Interface_test::requested_stateResponse)

(defmethod ODrive_Interface_test::requested_stateRequest
  (:response () (instance ODrive_Interface_test::requested_stateResponse :init)))

(setf (get ODrive_Interface_test::requested_stateRequest :md5sum-) "b06410045851cc21cdfe462a30e6cdb3")
(setf (get ODrive_Interface_test::requested_stateRequest :datatype-) "ODrive_Interface_test/requested_stateRequest")
(setf (get ODrive_Interface_test::requested_stateRequest :definition-)
      "
int16 axis
int16 requested_state
---

bool result

")

(setf (get ODrive_Interface_test::requested_stateResponse :md5sum-) "b06410045851cc21cdfe462a30e6cdb3")
(setf (get ODrive_Interface_test::requested_stateResponse :datatype-) "ODrive_Interface_test/requested_stateResponse")
(setf (get ODrive_Interface_test::requested_stateResponse :definition-)
      "
int16 axis
int16 requested_state
---

bool result

")



(provide :ODrive_Interface_test/requested_state "b06410045851cc21cdfe462a30e6cdb3")


