
(cl:in-package :asdf)

(defsystem "pololu_maestro_servo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pololu_maestro_servo_msg" :depends-on ("_package_pololu_maestro_servo_msg"))
    (:file "_package_pololu_maestro_servo_msg" :depends-on ("_package"))
  ))