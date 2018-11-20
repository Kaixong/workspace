
(cl:in-package :asdf)

(defsystem "dataglovetest-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dataglove_data" :depends-on ("_package_dataglove_data"))
    (:file "_package_dataglove_data" :depends-on ("_package"))
  ))