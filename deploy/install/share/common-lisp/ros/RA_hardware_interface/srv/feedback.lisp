; Auto-generated. Do not edit!


(cl:in-package RA_hardware_interface-srv)


;//! \htmlinclude feedback-request.msg.html

(cl:defclass <feedback-request> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type cl:fixnum
    :initform 0))
)

(cl:defclass feedback-request (<feedback-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feedback-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feedback-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RA_hardware_interface-srv:<feedback-request> is deprecated: use RA_hardware_interface-srv:feedback-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <feedback-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:axis-val is deprecated.  Use RA_hardware_interface-srv:axis instead.")
  (axis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feedback-request>) ostream)
  "Serializes a message object of type '<feedback-request>"
  (cl:let* ((signed (cl:slot-value msg 'axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feedback-request>) istream)
  "Deserializes a message object of type '<feedback-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feedback-request>)))
  "Returns string type for a service object of type '<feedback-request>"
  "RA_hardware_interface/feedbackRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback-request)))
  "Returns string type for a service object of type 'feedback-request"
  "RA_hardware_interface/feedbackRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedback-request>)))
  "Returns md5sum for a message object of type '<feedback-request>"
  "64b7d5a934e60038fcb2666a62ef99e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedback-request)))
  "Returns md5sum for a message object of type 'feedback-request"
  "64b7d5a934e60038fcb2666a62ef99e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feedback-request>)))
  "Returns full string definition for message of type '<feedback-request>"
  (cl:format cl:nil "~%int16 axis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feedback-request)))
  "Returns full string definition for message of type 'feedback-request"
  (cl:format cl:nil "~%int16 axis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feedback-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feedback-request>))
  "Converts a ROS message object to a list"
  (cl:list 'feedback-request
    (cl:cons ':axis (axis msg))
))
;//! \htmlinclude feedback-response.msg.html

(cl:defclass <feedback-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass feedback-response (<feedback-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feedback-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feedback-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RA_hardware_interface-srv:<feedback-response> is deprecated: use RA_hardware_interface-srv:feedback-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <feedback-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:position-val is deprecated.  Use RA_hardware_interface-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feedback-response>) ostream)
  "Serializes a message object of type '<feedback-response>"
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feedback-response>) istream)
  "Deserializes a message object of type '<feedback-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feedback-response>)))
  "Returns string type for a service object of type '<feedback-response>"
  "RA_hardware_interface/feedbackResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback-response)))
  "Returns string type for a service object of type 'feedback-response"
  "RA_hardware_interface/feedbackResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedback-response>)))
  "Returns md5sum for a message object of type '<feedback-response>"
  "64b7d5a934e60038fcb2666a62ef99e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedback-response)))
  "Returns md5sum for a message object of type 'feedback-response"
  "64b7d5a934e60038fcb2666a62ef99e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feedback-response>)))
  "Returns full string definition for message of type '<feedback-response>"
  (cl:format cl:nil "~%int32 position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feedback-response)))
  "Returns full string definition for message of type 'feedback-response"
  (cl:format cl:nil "~%int32 position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feedback-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feedback-response>))
  "Converts a ROS message object to a list"
  (cl:list 'feedback-response
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'feedback)))
  'feedback-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'feedback)))
  'feedback-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback)))
  "Returns string type for a service object of type '<feedback>"
  "RA_hardware_interface/feedback")