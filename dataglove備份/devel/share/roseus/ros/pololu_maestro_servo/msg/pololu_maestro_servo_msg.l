;; Auto-generated. Do not edit!


(when (boundp 'pololu_maestro_servo::pololu_maestro_servo_msg)
  (if (not (find-package "POLOLU_MAESTRO_SERVO"))
    (make-package "POLOLU_MAESTRO_SERVO"))
  (shadow 'pololu_maestro_servo_msg (find-package "POLOLU_MAESTRO_SERVO")))
(unless (find-package "POLOLU_MAESTRO_SERVO::POLOLU_MAESTRO_SERVO_MSG")
  (make-package "POLOLU_MAESTRO_SERVO::POLOLU_MAESTRO_SERVO_MSG"))

(in-package "ROS")
;;//! \htmlinclude pololu_maestro_servo_msg.msg.html


(defclass pololu_maestro_servo::pololu_maestro_servo_msg
  :super ros::object
  :slots (_servo_data ))

(defmethod pololu_maestro_servo::pololu_maestro_servo_msg
  (:init
   (&key
    ((:servo_data __servo_data) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _servo_data __servo_data)
   self)
  (:servo_data
   (&optional __servo_data)
   (if __servo_data (setq _servo_data __servo_data)) _servo_data)
  (:serialization-length
   ()
   (+
    ;; int32[6] _servo_data
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[6] _servo_data
     (dotimes (i 6)
       (write-long (elt _servo_data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[6] _servo_data
   (dotimes (i (length _servo_data))
     (setf (elt _servo_data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get pololu_maestro_servo::pololu_maestro_servo_msg :md5sum-) "9c444c8787a637f584c57a88a50b5fa1")
(setf (get pololu_maestro_servo::pololu_maestro_servo_msg :datatype-) "pololu_maestro_servo/pololu_maestro_servo_msg")
(setf (get pololu_maestro_servo::pololu_maestro_servo_msg :definition-)
      "int32[6] servo_data
")



(provide :pololu_maestro_servo/pololu_maestro_servo_msg "9c444c8787a637f584c57a88a50b5fa1")


