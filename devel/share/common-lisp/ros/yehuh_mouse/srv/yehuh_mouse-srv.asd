
(cl:in-package :asdf)

(defsystem "yehuh_mouse-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TimedMotion" :depends-on ("_package_TimedMotion"))
    (:file "_package_TimedMotion" :depends-on ("_package"))
  ))