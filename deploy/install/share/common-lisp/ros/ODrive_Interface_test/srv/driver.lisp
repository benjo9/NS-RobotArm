; Auto-generated. Do not edit!


(cl:in-package ODrive_Interface_test-srv)


;//! \htmlinclude driver-request.msg.html

(cl:defclass <driver-request> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass driver-request (<driver-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <driver-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'driver-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ODrive_Interface_test-srv:<driver-request> is deprecated: use ODrive_Interface_test-srv:driver-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <driver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:axis-val is deprecated.  Use ODrive_Interface_test-srv:axis instead.")
  (axis m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <driver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:value-val is deprecated.  Use ODrive_Interface_test-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <driver-request>) ostream)
  "Serializes a message object of type '<driver-request>"
  (cl:let* ((signed (cl:slot-value msg 'axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <driver-request>) istream)
  "Deserializes a message object of type '<driver-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<driver-request>)))
  "Returns string type for a service object of type '<driver-request>"
  "ODrive_Interface_test/driverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'driver-request)))
  "Returns string type for a service object of type 'driver-request"
  "ODrive_Interface_test/driverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<driver-request>)))
  "Returns md5sum for a message object of type '<driver-request>"
  "6df2415227858f9be2d7131c3c0f5ed5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'driver-request)))
  "Returns md5sum for a message object of type 'driver-request"
  "6df2415227858f9be2d7131c3c0f5ed5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<driver-request>)))
  "Returns full string definition for message of type '<driver-request>"
  (cl:format cl:nil "~%int16 axis~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'driver-request)))
  "Returns full string definition for message of type 'driver-request"
  (cl:format cl:nil "~%int16 axis~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <driver-request>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <driver-request>))
  "Converts a ROS message object to a list"
  (cl:list 'driver-request
    (cl:cons ':axis (axis msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude driver-response.msg.html

(cl:defclass <driver-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass driver-response (<driver-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <driver-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'driver-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ODrive_Interface_test-srv:<driver-response> is deprecated: use ODrive_Interface_test-srv:driver-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <driver-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ODrive_Interface_test-srv:result-val is deprecated.  Use ODrive_Interface_test-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <driver-response>) ostream)
  "Serializes a message object of type '<driver-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <driver-response>) istream)
  "Deserializes a message object of type '<driver-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<driver-response>)))
  "Returns string type for a service object of type '<driver-response>"
  "ODrive_Interface_test/driverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'driver-response)))
  "Returns string type for a service object of type 'driver-response"
  "ODrive_Interface_test/driverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<driver-response>)))
  "Returns md5sum for a message object of type '<driver-response>"
  "6df2415227858f9be2d7131c3c0f5ed5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'driver-response)))
  "Returns md5sum for a message object of type 'driver-response"
  "6df2415227858f9be2d7131c3c0f5ed5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<driver-response>)))
  "Returns full string definition for message of type '<driver-response>"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'driver-response)))
  "Returns full string definition for message of type 'driver-response"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <driver-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <driver-response>))
  "Converts a ROS message object to a list"
  (cl:list 'driver-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'driver)))
  'driver-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'driver)))
  'driver-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'driver)))
  "Returns string type for a service object of type '<driver>"
  "ODrive_Interface_test/driver")