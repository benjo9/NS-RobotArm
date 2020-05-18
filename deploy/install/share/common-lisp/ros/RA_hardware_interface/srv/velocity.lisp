; Auto-generated. Do not edit!


(cl:in-package RA_hardware_interface-srv)


;//! \htmlinclude velocity-request.msg.html

(cl:defclass <velocity-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass velocity-request (<velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RA_hardware_interface-srv:<velocity-request> is deprecated: use RA_hardware_interface-srv:velocity-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:axis-val is deprecated.  Use RA_hardware_interface-srv:axis instead.")
  (axis m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:value-val is deprecated.  Use RA_hardware_interface-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <velocity-request>) ostream)
  "Serializes a message object of type '<velocity-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <velocity-request>) istream)
  "Deserializes a message object of type '<velocity-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<velocity-request>)))
  "Returns string type for a service object of type '<velocity-request>"
  "RA_hardware_interface/velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'velocity-request)))
  "Returns string type for a service object of type 'velocity-request"
  "RA_hardware_interface/velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<velocity-request>)))
  "Returns md5sum for a message object of type '<velocity-request>"
  "6f5723450e3c67d0d72065dca6e91464")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'velocity-request)))
  "Returns md5sum for a message object of type 'velocity-request"
  "6f5723450e3c67d0d72065dca6e91464")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<velocity-request>)))
  "Returns full string definition for message of type '<velocity-request>"
  (cl:format cl:nil "~%int16 axis~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'velocity-request)))
  "Returns full string definition for message of type 'velocity-request"
  (cl:format cl:nil "~%int16 axis~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <velocity-request>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'velocity-request
    (cl:cons ':axis (axis msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude velocity-response.msg.html

(cl:defclass <velocity-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass velocity-response (<velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RA_hardware_interface-srv:<velocity-response> is deprecated: use RA_hardware_interface-srv:velocity-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RA_hardware_interface-srv:result-val is deprecated.  Use RA_hardware_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <velocity-response>) ostream)
  "Serializes a message object of type '<velocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <velocity-response>) istream)
  "Deserializes a message object of type '<velocity-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<velocity-response>)))
  "Returns string type for a service object of type '<velocity-response>"
  "RA_hardware_interface/velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'velocity-response)))
  "Returns string type for a service object of type 'velocity-response"
  "RA_hardware_interface/velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<velocity-response>)))
  "Returns md5sum for a message object of type '<velocity-response>"
  "6f5723450e3c67d0d72065dca6e91464")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'velocity-response)))
  "Returns md5sum for a message object of type 'velocity-response"
  "6f5723450e3c67d0d72065dca6e91464")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<velocity-response>)))
  "Returns full string definition for message of type '<velocity-response>"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'velocity-response)))
  "Returns full string definition for message of type 'velocity-response"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <velocity-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'velocity-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'velocity)))
  'velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'velocity)))
  'velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'velocity)))
  "Returns string type for a service object of type '<velocity>"
  "RA_hardware_interface/velocity")