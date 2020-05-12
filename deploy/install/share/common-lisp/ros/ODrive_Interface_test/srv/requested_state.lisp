; Auto-generated. Do not edit!


(cl:in-package ODrive_Interface_test-srv)


;//! \htmlinclude requested_state-request.msg.html

(cl:defclass <requested_state-request> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type cl:fixnum
    :initform 0)
   (requested_state
    :reader requested_state
    :initarg :requested_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass requested_state-request (<requested_state-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <requested_state-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'requested_state-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ODrive_Interface_test-srv:<requested_state-request> is deprecated: use ODrive_Interface_test-srv:requested_state-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <requested_state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:axis-val is deprecated.  Use ODrive_Interface_test-srv:axis instead.")
  (axis m))

(cl:ensure-generic-function 'requested_state-val :lambda-list '(m))
(cl:defmethod requested_state-val ((m <requested_state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:requested_state-val is deprecated.  Use ODrive_Interface_test-srv:requested_state instead.")
  (requested_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <requested_state-request>) ostream)
  "Serializes a message object of type '<requested_state-request>"
  (cl:let* ((signed (cl:slot-value msg 'axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'requested_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <requested_state-request>) istream)
  "Deserializes a message object of type '<requested_state-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requested_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<requested_state-request>)))
  "Returns string type for a service object of type '<requested_state-request>"
  "ODrive_Interface_test/requested_stateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requested_state-request)))
  "Returns string type for a service object of type 'requested_state-request"
  "ODrive_Interface_test/requested_stateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<requested_state-request>)))
  "Returns md5sum for a message object of type '<requested_state-request>"
  "b06410045851cc21cdfe462a30e6cdb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'requested_state-request)))
  "Returns md5sum for a message object of type 'requested_state-request"
  "b06410045851cc21cdfe462a30e6cdb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<requested_state-request>)))
  "Returns full string definition for message of type '<requested_state-request>"
  (cl:format cl:nil "~%int16 axis~%int16 requested_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'requested_state-request)))
  "Returns full string definition for message of type 'requested_state-request"
  (cl:format cl:nil "~%int16 axis~%int16 requested_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <requested_state-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <requested_state-request>))
  "Converts a ROS message object to a list"
  (cl:list 'requested_state-request
    (cl:cons ':axis (axis msg))
    (cl:cons ':requested_state (requested_state msg))
))
;//! \htmlinclude requested_state-response.msg.html

(cl:defclass <requested_state-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass requested_state-response (<requested_state-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <requested_state-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'requested_state-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ODrive_Interface_test-srv:<requested_state-response> is deprecated: use ODrive_Interface_test-srv:requested_state-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <requested_state-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:result-val is deprecated.  Use ODrive_Interface_test-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <requested_state-response>) ostream)
  "Serializes a message object of type '<requested_state-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <requested_state-response>) istream)
  "Deserializes a message object of type '<requested_state-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<requested_state-response>)))
  "Returns string type for a service object of type '<requested_state-response>"
  "ODrive_Interface_test/requested_stateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requested_state-response)))
  "Returns string type for a service object of type 'requested_state-response"
  "ODrive_Interface_test/requested_stateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<requested_state-response>)))
  "Returns md5sum for a message object of type '<requested_state-response>"
  "b06410045851cc21cdfe462a30e6cdb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'requested_state-response)))
  "Returns md5sum for a message object of type 'requested_state-response"
  "b06410045851cc21cdfe462a30e6cdb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<requested_state-response>)))
  "Returns full string definition for message of type '<requested_state-response>"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'requested_state-response)))
  "Returns full string definition for message of type 'requested_state-response"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <requested_state-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <requested_state-response>))
  "Converts a ROS message object to a list"
  (cl:list 'requested_state-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'requested_state)))
  'requested_state-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'requested_state)))
  'requested_state-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requested_state)))
  "Returns string type for a service object of type '<requested_state>"
  "ODrive_Interface_test/requested_state")