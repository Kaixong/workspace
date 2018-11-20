;; Auto-generated. Do not edit!


(when (boundp 'ihand_control::hand)
  (if (not (find-package "IHAND_CONTROL"))
    (make-package "IHAND_CONTROL"))
  (shadow 'hand (find-package "IHAND_CONTROL")))
(unless (find-package "IHAND_CONTROL::HAND")
  (make-package "IHAND_CONTROL::HAND"))

(in-package "ROS")
;;//! \htmlinclude hand.msg.html


(defclass ihand_control::hand
  :super ros::object
  :slots (_thumb _index _middle _ring _baby _trapezium ))

(defmethod ihand_control::hand
  (:init
   (&key
    ((:thumb __thumb) 0.0)
    ((:index __index) 0.0)
    ((:middle __middle) 0.0)
    ((:ring __ring) 0.0)
    ((:baby __baby) 0.0)
    ((:trapezium __trapezium) 0.0)
    )
   (send-super :init)
   (setq _thumb (float __thumb))
   (setq _index (float __index))
   (setq _middle (float __middle))
   (setq _ring (float __ring))
   (setq _baby (float __baby))
   (setq _trapezium (float __trapezium))
   self)
  (:thumb
   (&optional __thumb)
   (if __thumb (setq _thumb __thumb)) _thumb)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:middle
   (&optional __middle)
   (if __middle (setq _middle __middle)) _middle)
  (:ring
   (&optional __ring)
   (if __ring (setq _ring __ring)) _ring)
  (:baby
   (&optional __baby)
   (if __baby (setq _baby __baby)) _baby)
  (:trapezium
   (&optional __trapezium)
   (if __trapezium (setq _trapezium __trapezium)) _trapezium)
  (:serialization-length
   ()
   (+
    ;; float32 _thumb
    4
    ;; float32 _index
    4
    ;; float32 _middle
    4
    ;; float32 _ring
    4
    ;; float32 _baby
    4
    ;; float32 _trapezium
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _thumb
       (sys::poke _thumb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _index
       (sys::poke _index (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _middle
       (sys::poke _middle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ring
       (sys::poke _ring (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _baby
       (sys::poke _baby (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trapezium
       (sys::poke _trapezium (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _thumb
     (setq _thumb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _index
     (setq _index (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _middle
     (setq _middle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ring
     (setq _ring (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _baby
     (setq _baby (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trapezium
     (setq _trapezium (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ihand_control::hand :md5sum-) "3f67db7bbc93485d67116d239f1e5343")
(setf (get ihand_control::hand :datatype-) "ihand_control/hand")
(setf (get ihand_control::hand :definition-)
      "float32 thumb
float32 index
float32 middle
float32 ring
float32 baby
float32 trapezium
")



(provide :ihand_control/hand "3f67db7bbc93485d67116d239f1e5343")


