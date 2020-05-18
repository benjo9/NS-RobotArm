; Auto-generated. Do not edit!


(cl:in-package RA_hardware_interface-srv)


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
    :type cl:integer
    :initform 0))
)

(cl:defclass driver-request (<driver-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <driver-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'driver-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RA_hardware_interface-srv:<driver-request> is deprecated: use RA_hardware_interface-srv:driver-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <driver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:axis-val is deprecated.  Use RA_hardware_interface-srv:axis instead.")
  (axis m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <driver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:value-val is deprecated.  Use RA_hardware_interface-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <driver-request>) ostream)
  "Serializes a message object of type '<driver-request>"
  (cl:let* ((signed (cl:slot-value msg 'axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <driver-request>) istream)
  "Deserializes a message object of type '<driver-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<driver-request>)))
  "Returns string type for a service object of type '<driver-request>"
  "RA_hardware_interface/driverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'driver-request)))
  "Returns string type for a service object of type 'driver-request"
  "RA_hardware_interface/driverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<driver-request>)))
  "Returns md5sum for a message object of type '<driver-request>"
  "6f5723450e3c67d0d72065dca6e91464")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'driver-request)))
  "Returns md5sum for a message object of type 'driver-request"
  "6f5723450e3c67d0d72065dca6e91464")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<driver-request>)))
  "Returns full string definition for message of type '<driver-request>"
  (cl:format cl:nil "~%int16 axis~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'driver-request)))
  "Returns full string definition for message of type 'driver-request"
  (cl:format cl:nil "~%int16 axis~%int32 value~%~%~%"))
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RA_hardware_interface-srv:<driver-response> is deprecated: use RA_hardware_interface-srv:driver-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <driver-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:result-val is deprecated.  Use RA_hardware_interface-srv:result instead.")
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
  "RA_hardware_interface/driverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'driver-response)))
  "Returns string type for a service object of type 'driver-response"
  "RA_hardware_interface/driverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<driver-response>)))
  "Returns md5sum for a message object of type '<driver-response>"
  "6f5723450e3c67d0d72065dca6e91464")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'driver-response)))
  "Returns md5sum for a message object of type 'driver-response"
  "6f5723450e3c67d0d72065dca6e91464")
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
  "RA_hardware_interface/driver")