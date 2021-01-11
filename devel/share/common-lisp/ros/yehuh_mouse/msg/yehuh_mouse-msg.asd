
(cl:in-package :asdf)

(defsystem "yehuh_mouse-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LightSensorValues" :depends-on ("_package_LightSensorValues"))
    (:file "_package_LightSensorValues" :depends-on ("_package"))
    (:file "MotorFreqs" :depends-on ("_package_MotorFreqs"))
    (:file "_package_MotorFreqs" :depends-on ("_package"))
  ))