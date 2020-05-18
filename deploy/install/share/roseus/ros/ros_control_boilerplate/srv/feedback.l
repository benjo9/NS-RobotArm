;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::feedback)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'feedback (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::FEEDBACK")
  (make-package "ROS_CONTROL_BOILERPLATE::FEEDBACK"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::FEEDBACKREQUEST")
  (make-package "ROS_CONTROL_BOILERPLATE::FEEDBACKREQUEST"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::FEEDBACKRESPONSE")
  (make-package "ROS_CONTROL_BOILERPLATE::FEEDBACKRESPONSE"))

(in-package "ROS")





(defclass ros_control_boilerplate::feedbackRequest
  :super ros::object
  :slots (_axis ))

(defmethod ros_control_boilerplate::feedbackRequest
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

(defclass ros_control_boilerplate::feedbackResponse
  :super ros::object
  :slots (_position ))

(defmethod ros_control_boilerplate::feedbackResponse
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

(defclass ros_control_boilerplate::feedback
  :super ros::object
  :slots ())

(setf (get ros_control_boilerplate::feedback :md5sum-) "64b7d5a934e60038fcb2666a62ef99e5")
(setf (get ros_control_boilerplate::feedback :datatype-) "ros_control_boilerplate/feedback")
(setf (get ros_control_boilerplate::feedback :request) ros_control_boilerplate::feedbackRequest)
(setf (get ros_control_boilerplate::feedback :response) ros_control_boilerplate::feedbackResponse)

(defmethod ros_control_boilerplate::feedbackRequest
  (:response () (instance ros_control_boilerplate::feedbackResponse :init)))

(setf (get ros_control_boilerplate::feedbackRequest :md5sum-) "64b7d5a934e60038fcb2666a62ef99e5")
(setf (get ros_control_boilerplate::feedbackRequest :datatype-) "ros_control_boilerplate/feedbackRequest")
(setf (get ros_control_boilerplate::feedbackRequest :definition-)
      "
int16 axis
---

int32 position

")

(setf (get ros_control_boilerplate::feedbackResponse :md5sum-) "64b7d5a934e60038fcb2666a62ef99e5")
(setf (get ros_control_boilerplate::feedbackResponse :datatype-) "ros_control_boilerplate/feedbackResponse")
(setf (get ros_control_boilerplate::feedbackResponse :definition-)
      "
int16 axis
---

int32 position

")



(provide :ros_control_boilerplate/feedback "64b7d5a934e60038fcb2666a62ef99e5")


