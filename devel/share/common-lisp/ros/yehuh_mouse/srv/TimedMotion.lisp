; Auto-generated. Do not edit!


(cl:in-package yehuh_mouse-srv)


;//! \htmlinclude TimedMotion-request.msg.html

(cl:defclass <TimedMotion-request> (roslisp-msg-protocol:ros-message)
  ((left_hz
    :reader left_hz
    :initarg :left_hz
    :type cl:fixnum
    :initform 0)
   (right_hz
    :reader right_hz
    :initarg :right_hz
    :type cl:fixnum
    :initform 0)
   (duration_ms
    :reader duration_ms
    :initarg :duration_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass TimedMotion-request (<TimedMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yehuh_mouse-srv:<TimedMotion-request> is deprecated: use yehuh_mouse-srv:TimedMotion-request instead.")))

(cl:ensure-generic-function 'left_hz-val :lambda-list '(m))
(cl:defmethod left_hz-val ((m <TimedMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yehuh_mouse-srv:left_hz-val is deprecated.  Use yehuh_mouse-srv:left_hz instead.")
  (left_hz m))

(cl:ensure-generic-function 'right_hz-val :lambda-list '(m))
(cl:defmethod right_hz-val ((m <TimedMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yehuh_mouse-srv:right_hz-val is deprecated.  Use yehuh_mouse-srv:right_hz instead.")
  (right_hz m))

(cl:ensure-generic-function 'duration_ms-val :lambda-list '(m))
(cl:defmethod duration_ms-val ((m <TimedMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yehuh_mouse-srv:duration_ms-val is deprecated.  Use yehuh_mouse-srv:duration_ms instead.")
  (duration_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedMotion-request>) ostream)
  "Serializes a message object of type '<TimedMotion-request>"
  (cl:let* ((signed (cl:slot-value msg 'left_hz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_hz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration_ms)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedMotion-request>) istream)
  "Deserializes a message object of type '<TimedMotion-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_hz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_hz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedMotion-request>)))
  "Returns string type for a service object of type '<TimedMotion-request>"
  "yehuh_mouse/TimedMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedMotion-request)))
  "Returns string type for a service object of type 'TimedMotion-request"
  "yehuh_mouse/TimedMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedMotion-request>)))
  "Returns md5sum for a message object of type '<TimedMotion-request>"
  "a2afe94fc48ef0c10e4ed921900e9e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedMotion-request)))
  "Returns md5sum for a message object of type 'TimedMotion-request"
  "a2afe94fc48ef0c10e4ed921900e9e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedMotion-request>)))
  "Returns full string definition for message of type '<TimedMotion-request>"
  (cl:format cl:nil "int16 left_hz~%int16 right_hz~%uint32 duration_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedMotion-request)))
  "Returns full string definition for message of type 'TimedMotion-request"
  (cl:format cl:nil "int16 left_hz~%int16 right_hz~%uint32 duration_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedMotion-request>))
  (cl:+ 0
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedMotion-request
    (cl:cons ':left_hz (left_hz msg))
    (cl:cons ':right_hz (right_hz msg))
    (cl:cons ':duration_ms (duration_ms msg))
))
;//! \htmlinclude TimedMotion-response.msg.html

(cl:defclass <TimedMotion-response> (roslisp-msg-protocol:ros-message)
  ((sucess
    :reader sucess
    :initarg :sucess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TimedMotion-response (<TimedMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yehuh_mouse-srv:<TimedMotion-response> is deprecated: use yehuh_mouse-srv:TimedMotion-response instead.")))

(cl:ensure-generic-function 'sucess-val :lambda-list '(m))
(cl:defmethod sucess-val ((m <TimedMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yehuh_mouse-srv:sucess-val is deprecated.  Use yehuh_mouse-srv:sucess instead.")
  (sucess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedMotion-response>) ostream)
  "Serializes a message object of type '<TimedMotion-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sucess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedMotion-response>) istream)
  "Deserializes a message object of type '<TimedMotion-response>"
    (cl:setf (cl:slot-value msg 'sucess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedMotion-response>)))
  "Returns string type for a service object of type '<TimedMotion-response>"
  "yehuh_mouse/TimedMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedMotion-response)))
  "Returns string type for a service object of type 'TimedMotion-response"
  "yehuh_mouse/TimedMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedMotion-response>)))
  "Returns md5sum for a message object of type '<TimedMotion-response>"
  "a2afe94fc48ef0c10e4ed921900e9e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedMotion-response)))
  "Returns md5sum for a message object of type 'TimedMotion-response"
  "a2afe94fc48ef0c10e4ed921900e9e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedMotion-response>)))
  "Returns full string definition for message of type '<TimedMotion-response>"
  (cl:format cl:nil "bool sucess~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedMotion-response)))
  "Returns full string definition for message of type 'TimedMotion-response"
  (cl:format cl:nil "bool sucess~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedMotion-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedMotion-response
    (cl:cons ':sucess (sucess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TimedMotion)))
  'TimedMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TimedMotion)))
  'TimedMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedMotion)))
  "Returns string type for a service object of type '<TimedMotion>"
  "yehuh_mouse/TimedMotion")