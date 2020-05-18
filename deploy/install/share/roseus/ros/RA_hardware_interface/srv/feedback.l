;; Auto-generated. Do not edit!


(when (boundp 'RA_hardware_interface::feedback)
  (if (not (find-package "RA_HARDWARE_INTERFACE"))
    (make-package "RA_HARDWARE_INTERFACE"))
  (shadow 'feedback (find-package "RA_HARDWARE_INTERFACE")))
(unless (find-package "RA_HARDWARE_INTERFACE::FEEDBACK")
  (make-package "RA_HARDWARE_INTERFACE::FEEDBACK"))
(unless (find-package "RA_HARDWARE_INTERFACE::FEEDBACKREQUEST")
  (make-package "RA_HARDWARE_INTERFACE::FEEDBACKREQUEST"))
(unless (find-package "RA_HARDWARE_INTERFACE::FEEDBACKRESPONSE")
  (make-package "RA_HARDWARE_INTERFACE::FEEDBACKRESPONSE"))

(in-package "ROS")





(defclass RA_hardware_interface::feedbackRequest
  :super ros::object
  :slots (_axis ))

(defmethod RA_hardware_interface::feedbackRequest
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

(defclass RA_hardware_interface::feedbackResponse
  :super ros::object
  :slots (_position ))

(defmethod RA_hardware_interface::feedbackResponse
  (:init
   (&key
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _position
       (write-long _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass RA_hardware_interface::feedback
  :super ros::object
  :slots ())

(setf (get RA_hardware_interface::feedback :md5sum-) "64b7d5a934e60038fcb2666a62ef99e5")
(setf (get RA_hardware_interface::feedback :datatype-) "RA_hardware_interface/feedback")
(setf (get RA_hardware_interface::feedback :request) RA_hardware_interface::feedbackRequest)
(setf (get RA_hardware_interface::feedback :response) RA_hardware_interface::feedbackResponse)

(defmethod RA_hardware_interface::feedbackRequest
  (:response () (instance RA_hardware_interface::feedbackResponse :init)))

(setf (get RA_hardware_interface::feedbackRequest :md5sum-) "64b7d5a934e60038fcb2666a62ef99e5")
(setf (get RA_hardware_interface::feedbackRequest :datatype-) "RA_hardware_interface/feedbackRequest")
(setf (get RA_hardware_interface::feedbackRequest :definition-)
      "
int16 axis
---

int32 position

")

(setf (get RA_hardware_interface::feedbackResponse :md5sum-) "64b7d5a934e60038fcb2666a62ef99e5")
(setf (get RA_hardware_interface::feedbackResponse :datatype-) "RA_hardware_interface/feedbackResponse")
(setf (get RA_hardware_interface::feedbackResponse :definition-)
      "
int16 axis
---

int32 position

")



(provide :RA_hardware_interface/feedback "64b7d5a934e60038fcb2666a62ef99e5")


