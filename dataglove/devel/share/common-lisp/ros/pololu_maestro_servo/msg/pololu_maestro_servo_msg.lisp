; Auto-generated. Do not edit!


(cl:in-package pololu_maestro_servo-msg)


;//! \htmlinclude pololu_maestro_servo_msg.msg.html

(cl:defclass <pololu_maestro_servo_msg> (roslisp-msg-protocol:ros-message)
  ((servo_data
    :reader servo_data
    :initarg :servo_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass pololu_maestro_servo_msg (<pololu_maestro_servo_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pololu_maestro_servo_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pololu_maestro_servo_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pololu_maestro_servo-msg:<pololu_maestro_servo_msg> is deprecated: use pololu_maestro_servo-msg:pololu_maestro_servo_msg instead.")))

(cl:ensure-generic-function 'servo_data-val :lambda-list '(m))
(cl:defmethod servo_data-val ((m <pololu_maestro_servo_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pololu_maestro_servo-msg:servo_data-val is deprecated.  Use pololu_maestro_servo-msg:servo_data instead.")
  (servo_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pololu_maestro_servo_msg>) ostream)
  "Serializes a message object of type '<pololu_maestro_servo_msg>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'servo_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pololu_maestro_servo_msg>) istream)
  "Deserializes a message object of type '<pololu_maestro_servo_msg>"
  (cl:setf (cl:slot-value msg 'servo_data) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'servo_data)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pololu_maestro_servo_msg>)))
  "Returns string type for a message object of type '<pololu_maestro_servo_msg>"
  "pololu_maestro_servo/pololu_maestro_servo_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pololu_maestro_servo_msg)))
  "Returns string type for a message object of type 'pololu_maestro_servo_msg"
  "pololu_maestro_servo/pololu_maestro_servo_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pololu_maestro_servo_msg>)))
  "Returns md5sum for a message object of type '<pololu_maestro_servo_msg>"
  "9c444c8787a637f584c57a88a50b5fa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pololu_maestro_servo_msg)))
  "Returns md5sum for a message object of type 'pololu_maestro_servo_msg"
  "9c444c8787a637f584c57a88a50b5fa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pololu_maestro_servo_msg>)))
  "Returns full string definition for message of type '<pololu_maestro_servo_msg>"
  (cl:format cl:nil "int32[6] servo_data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pololu_maestro_servo_msg)))
  "Returns full string definition for message of type 'pololu_maestro_servo_msg"
  (cl:format cl:nil "int32[6] servo_data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pololu_maestro_servo_msg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'servo_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pololu_maestro_servo_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'pololu_maestro_servo_msg
    (cl:cons ':servo_data (servo_data msg))
))
