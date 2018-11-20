; Auto-generated. Do not edit!


(cl:in-package ihand_control-msg)


;//! \htmlinclude hand.msg.html

(cl:defclass <hand> (roslisp-msg-protocol:ros-message)
  ((thumb
    :reader thumb
    :initarg :thumb
    :type cl:float
    :initform 0.0)
   (index
    :reader index
    :initarg :index
    :type cl:float
    :initform 0.0)
   (middle
    :reader middle
    :initarg :middle
    :type cl:float
    :initform 0.0)
   (ring
    :reader ring
    :initarg :ring
    :type cl:float
    :initform 0.0)
   (baby
    :reader baby
    :initarg :baby
    :type cl:float
    :initform 0.0)
   (trapezium
    :reader trapezium
    :initarg :trapezium
    :type cl:float
    :initform 0.0))
)

(cl:defclass hand (<hand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ihand_control-msg:<hand> is deprecated: use ihand_control-msg:hand instead.")))

(cl:ensure-generic-function 'thumb-val :lambda-list '(m))
(cl:defmethod thumb-val ((m <hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ihand_control-msg:thumb-val is deprecated.  Use ihand_control-msg:thumb instead.")
  (thumb m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ihand_control-msg:index-val is deprecated.  Use ihand_control-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'middle-val :lambda-list '(m))
(cl:defmethod middle-val ((m <hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ihand_control-msg:middle-val is deprecated.  Use ihand_control-msg:middle instead.")
  (middle m))

(cl:ensure-generic-function 'ring-val :lambda-list '(m))
(cl:defmethod ring-val ((m <hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ihand_control-msg:ring-val is deprecated.  Use ihand_control-msg:ring instead.")
  (ring m))

(cl:ensure-generic-function 'baby-val :lambda-list '(m))
(cl:defmethod baby-val ((m <hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ihand_control-msg:baby-val is deprecated.  Use ihand_control-msg:baby instead.")
  (baby m))

(cl:ensure-generic-function 'trapezium-val :lambda-list '(m))
(cl:defmethod trapezium-val ((m <hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ihand_control-msg:trapezium-val is deprecated.  Use ihand_control-msg:trapezium instead.")
  (trapezium m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hand>) ostream)
  "Serializes a message object of type '<hand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thumb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'middle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'baby))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trapezium))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hand>) istream)
  "Deserializes a message object of type '<hand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thumb) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'index) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'middle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ring) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'baby) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trapezium) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hand>)))
  "Returns string type for a message object of type '<hand>"
  "ihand_control/hand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hand)))
  "Returns string type for a message object of type 'hand"
  "ihand_control/hand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hand>)))
  "Returns md5sum for a message object of type '<hand>"
  "3f67db7bbc93485d67116d239f1e5343")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hand)))
  "Returns md5sum for a message object of type 'hand"
  "3f67db7bbc93485d67116d239f1e5343")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hand>)))
  "Returns full string definition for message of type '<hand>"
  (cl:format cl:nil "float32 thumb~%float32 index~%float32 middle~%float32 ring~%float32 baby~%float32 trapezium~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hand)))
  "Returns full string definition for message of type 'hand"
  (cl:format cl:nil "float32 thumb~%float32 index~%float32 middle~%float32 ring~%float32 baby~%float32 trapezium~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hand>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hand>))
  "Converts a ROS message object to a list"
  (cl:list 'hand
    (cl:cons ':thumb (thumb msg))
    (cl:cons ':index (index msg))
    (cl:cons ':middle (middle msg))
    (cl:cons ':ring (ring msg))
    (cl:cons ':baby (baby msg))
    (cl:cons ':trapezium (trapezium msg))
))
