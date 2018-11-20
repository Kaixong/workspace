
(cl:in-package :asdf)

(defsystem "ihand_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "hand" :depends-on ("_package_hand"))
    (:file "_package_hand" :depends-on ("_package"))
  ))