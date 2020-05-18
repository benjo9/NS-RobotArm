;; Auto-generated. Do not edit!


(when (boundp 'ODrive_Interface_test::feedback)
  (if (not (find-package "ODRIVE_INTERFACE_TEST"))
    (make-package "ODRIVE_INTERFACE_TEST"))
  (shadow 'feedback (find-package "ODRIVE_INTERFACE_TEST")))
(unless (find-package "ODRIVE_INTERFACE_TEST::FEEDBACK")
  (make-package "ODRIVE_INTERFACE_TEST::FEEDBACK"))
(unless (find-package "ODRIVE_INTERFACE_TEST::FEEDBACKREQUEST")
  (make-package "ODRIVE_INTERFACE_TEST::FEEDBACKREQUEST"))
(unless (find-package "ODRIVE_INTERFACE_TEST::FEEDBACKRESPONSE")
  (make-package "ODRIVE_INTERFACE_TEST::FEEDBACKRESPONSE"))

(in-package "ROS")





(defclass ODrive_Interface_test::feedbackRequest
  :super ros::object
  :slots (_axis ))

(defmethod ODrive_Interface_test::feedbackRequest
  (:init
   (&key
    ((:axis __axis) 0)
    )
   (send-super :init)
   (setq _axis (round __axis))
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:serialization-length
   ()
   (+
    ;; int16 _axis
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _axis
       (write-word _axis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _axis
     (setq _axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ODrive_Interface_test::feedbackResponse
  :super ros::object
  :slots (_position ))

(defmethod ODrive_Interface_test::feedbackResponse
  (:init
   (&key
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ODrive_Interface_test::feedback
  :super ros::object
  :slots ())

(setf (get ODrive_Interface_test::feedback :md5sum-) "7bdf82b185cf31283813583871cd5319")
(setf (get ODrive_Interface_test::feedback :datatype-) "ODrive_Interface_test/feedback")
(setf (get ODrive_Interface_test::feedback :request) ODrive_Interface_test::feedbackRequest)
(setf (get ODrive_Interface_test::feedback :response) ODrive_Interface_test::feedbackResponse)

(defmethod ODrive_Interface_test::feedbackRequest
  (:response () (instance ODrive_Interface_test::feedbackResponse :init)))

(setf (get ODrive_Interface_test::feedbackRequest :md5sum-) "7bdf82b185cf31283813583871cd5319")
(setf (get ODrive_Interface_test::feedbackRequest :datatype-) "ODrive_Interface_test/feedbackRequest")
(setf (get ODrive_Interface_test::feedbackRequest :definition-)
      "
int16 axis
---

float32 position

")

(setf (get ODrive_Interface_test::feedbackResponse :md5sum-) "7bdf82b185cf31283813583871cd5319")
(setf (get ODrive_Interface_test::feedbackResponse :datatype-) "ODrive_Interface_test/feedbackResponse")
(setf (get ODrive_Interface_test::feedbackResponse :definition-)
      "
int16 axis
---

float32 position

")



(provide :ODrive_Interface_test/feedback "7bdf82b185cf31283813583871cd5319")


