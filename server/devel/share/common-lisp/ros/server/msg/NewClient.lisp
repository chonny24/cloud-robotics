; Auto-generated. Do not edit!


(cl:in-package server-msg)


;//! \htmlinclude NewClient.msg.html

(cl:defclass <NewClient> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NewClient (<NewClient>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewClient>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewClient)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name server-msg:<NewClient> is deprecated: use server-msg:NewClient instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NewClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-msg:header-val is deprecated.  Use server-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <NewClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-msg:id-val is deprecated.  Use server-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewClient>) ostream)
  "Serializes a message object of type '<NewClient>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewClient>) istream)
  "Deserializes a message object of type '<NewClient>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewClient>)))
  "Returns string type for a message object of type '<NewClient>"
  "server/NewClient")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewClient)))
  "Returns string type for a message object of type 'NewClient"
  "server/NewClient")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewClient>)))
  "Returns md5sum for a message object of type '<NewClient>"
  "2f7d817cc3519c8b3803800f1c328467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewClient)))
  "Returns md5sum for a message object of type 'NewClient"
  "2f7d817cc3519c8b3803800f1c328467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewClient>)))
  "Returns full string definition for message of type '<NewClient>"
  (cl:format cl:nil "Header header~%int8 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewClient)))
  "Returns full string definition for message of type 'NewClient"
  (cl:format cl:nil "Header header~%int8 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewClient>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewClient>))
  "Converts a ROS message object to a list"
  (cl:list 'NewClient
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
))
