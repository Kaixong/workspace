;; Auto-generated. Do not edit!


(when (boundp 'dataglovetest::dataglove_data)
  (if (not (find-package "DATAGLOVETEST"))
    (make-package "DATAGLOVETEST"))
  (shadow 'dataglove_data (find-package "DATAGLOVETEST")))
(unless (find-package "DATAGLOVETEST::DATAGLOVE_DATA")
  (make-package "DATAGLOVETEST::DATAGLOVE_DATA"))

(in-package "ROS")
;;//! \htmlinclude dataglove_data.msg.html


(defclass dataglovetest::dataglove_data
  :super ros::object
  :slots (_LT _LP _LM _LR _LL _RT _RP _RM _RR _RL ))

(defmethod dataglovetest::dataglove_data
  (:init
   (&key
    ((:LT __LT) 0.0)
    ((:LP __LP) 0.0)
    ((:LM __LM) 0.0)
    ((:LR __LR) 0.0)
    ((:LL __LL) 0.0)
    ((:RT __RT) 0.0)
    ((:RP __RP) 0.0)
    ((:RM __RM) 0.0)
    ((:RR __RR) 0.0)
    ((:RL __RL) 0.0)
    )
   (send-super :init)
   (setq _LT (float __LT))
   (setq _LP (float __LP))
   (setq _LM (float __LM))
   (setq _LR (float __LR))
   (setq _LL (float __LL))
   (setq _RT (float __RT))
   (setq _RP (float __RP))
   (setq _RM (float __RM))
   (setq _RR (float __RR))
   (setq _RL (float __RL))
   self)
  (:LT
   (&optional __LT)
   (if __LT (setq _LT __LT)) _LT)
  (:LP
   (&optional __LP)
   (if __LP (setq _LP __LP)) _LP)
  (:LM
   (&optional __LM)
   (if __LM (setq _LM __LM)) _LM)
  (:LR
   (&optional __LR)
   (if __LR (setq _LR __LR)) _LR)
  (:LL
   (&optional __LL)
   (if __LL (setq _LL __LL)) _LL)
  (:RT
   (&optional __RT)
   (if __RT (setq _RT __RT)) _RT)
  (:RP
   (&optional __RP)
   (if __RP (setq _RP __RP)) _RP)
  (:RM
   (&optional __RM)
   (if __RM (setq _RM __RM)) _RM)
  (:RR
   (&optional __RR)
   (if __RR (setq _RR __RR)) _RR)
  (:RL
   (&optional __RL)
   (if __RL (setq _RL __RL)) _RL)
  (:serialization-length
   ()
   (+
    ;; float64 _LT
    8
    ;; float64 _LP
    8
    ;; float64 _LM
    8
    ;; float64 _LR
    8
    ;; float64 _LL
    8
    ;; float64 _RT
    8
    ;; float64 _RP
    8
    ;; float64 _RM
    8
    ;; float64 _RR
    8
    ;; float64 _RL
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _LT
       (sys::poke _LT (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LP
       (sys::poke _LP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LM
       (sys::poke _LM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LR
       (sys::poke _LR (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LL
       (sys::poke _LL (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RT
       (sys::poke _RT (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RP
       (sys::poke _RP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RM
       (sys::poke _RM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RR
       (sys::poke _RR (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RL
       (sys::poke _RL (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _LT
     (setq _LT (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LP
     (setq _LP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LM
     (setq _LM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LR
     (setq _LR (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LL
     (setq _LL (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RT
     (setq _RT (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RP
     (setq _RP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RM
     (setq _RM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RR
     (setq _RR (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RL
     (setq _RL (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get dataglovetest::dataglove_data :md5sum-) "31ba650ac7c0f1ef76e6e92486297e70")
(setf (get dataglovetest::dataglove_data :datatype-) "dataglovetest/dataglove_data")
(setf (get dataglovetest::dataglove_data :definition-)
      "
float64 LT
float64 LP
float64 LM
float64 LR
float64 LL
float64 RT
float64 RP
float64 RM
float64 RR
float64 RL

")



(provide :dataglovetest/dataglove_data "31ba650ac7c0f1ef76e6e92486297e70")


