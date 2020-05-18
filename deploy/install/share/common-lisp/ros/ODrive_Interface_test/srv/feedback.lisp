; Auto-generated. Do not edit!


(cl:in-package ODrive_Interface_test-srv)


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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ODrive_Interface_test-srv:<feedback-request> is deprecated: use ODrive_Interface_test-srv:feedback-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <feedback-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:axis-val is deprecated.  Use ODrive_Interface_test-srv:axis instead.")
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
  "ODrive_Interface_test/feedbackRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback-request)))
  "Returns string type for a service object of type 'feedback-request"
  "ODrive_Interface_test/feedbackRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedback-request>)))
  "Returns md5sum for a message object of type '<feedback-request>"
  "7bdf82b185cf31283813583871cd5319")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedback-request)))
  "Returns md5sum for a message object of type 'feedback-request"
  "7bdf82b185cf31283813583871cd5319")
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
    :type cl:float
    :initform 0.0))
)

(cl:defclass feedback-response (<feedback-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feedback-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feedback-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ODrive_Interface_test-srv:<feedback-response> is deprecated: use ODrive_Interface_test-srv:feedback-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <feedback-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:position-val is deprecated.  Use ODrive_Interface_test-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feedback-response>) ostream)
  "Serializes a message object of type '<feedback-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feedback-response>) istream)
  "Deserializes a message object of type '<feedback-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feedback-response>)))
  "Returns string type for a service object of type '<feedback-response>"
  "ODrive_Interface_test/feedbackResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback-response)))
  "Returns string type for a service object of type 'feedback-response"
  "ODrive_Interface_test/feedbackResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedback-response>)))
  "Returns md5sum for a message object of type '<feedback-response>"
  "7bdf82b185cf31283813583871cd5319")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedback-response)))
  "Returns md5sum for a message object of type 'feedback-response"
  "7bdf82b185cf31283813583871cd5319")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feedback-response>)))
  "Returns full string definition for message of type '<feedback-response>"
  (cl:format cl:nil "~%float32 position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feedback-response)))
  "Returns full string definition for message of type 'feedback-response"
  (cl:format cl:nil "~%float32 position~%~%~%~%"))
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
  "ODrive_Interface_test/feedback")