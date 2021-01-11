;; Auto-generated. Do not edit!


(when (boundp 'yehuh_mouse::TimedMotion)
  (if (not (find-package "YEHUH_MOUSE"))
    (make-package "YEHUH_MOUSE"))
  (shadow 'TimedMotion (find-package "YEHUH_MOUSE")))
(unless (find-package "YEHUH_MOUSE::TIMEDMOTION")
  (make-package "YEHUH_MOUSE::TIMEDMOTION"))
(unless (find-package "YEHUH_MOUSE::TIMEDMOTIONREQUEST")
  (make-package "YEHUH_MOUSE::TIMEDMOTIONREQUEST"))
(unless (find-package "YEHUH_MOUSE::TIMEDMOTIONRESPONSE")
  (make-package "YEHUH_MOUSE::TIMEDMOTIONRESPONSE"))

(in-package "ROS")





(defclass yehuh_mouse::TimedMotionRequest
  :super ros::object
  :slots (_left_hz _right_hz _duration_ms ))

(defmethod yehuh_mouse::TimedMotionRequest
  (:init
   (&key
    ((:left_hz __left_hz) 0)
    ((:right_hz __right_hz) 0)
    ((:duration_ms __duration_ms) 0)
    )
   (send-super :init)
   (setq _left_hz (round __left_hz))
   (setq _right_hz (round __right_hz))
   (setq _duration_ms (round __duration_ms))
   self)
  (:left_hz
   (&optional __left_hz)
   (if __left_hz (setq _left_hz __left_hz)) _left_hz)
  (:right_hz
   (&optional __right_hz)
   (if __right_hz (setq _right_hz __right_hz)) _right_hz)
  (:duration_ms
   (&optional __duration_ms)
   (if __duration_ms (setq _duration_ms __duration_ms)) _duration_ms)
  (:serialization-length
   ()
   (+
    ;; int16 _left_hz
    2
    ;; int16 _right_hz
    2
    ;; uint32 _duration_ms
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _left_hz
       (write-word _left_hz s)
     ;; int16 _right_hz
       (write-word _right_hz s)
     ;; uint32 _duration_ms
       (write-long _duration_ms s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _left_hz
     (setq _left_hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_hz
     (setq _right_hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _duration_ms
     (setq _duration_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yehuh_mouse::TimedMotionResponse
  :super ros::object
  :slots (_sucess ))

(defmethod yehuh_mouse::TimedMotionResponse
  (:init
   (&key
    ((:sucess __sucess) nil)
    )
   (send-super :init)
   (setq _sucess __sucess)
   self)
  (:sucess
   (&optional __sucess)
   (if __sucess (setq _sucess __sucess)) _sucess)
  (:serialization-length
   ()
   (+
    ;; bool _sucess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _sucess
       (if _sucess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _sucess
     (setq _sucess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yehuh_mouse::TimedMotion
  :super ros::object
  :slots ())

(setf (get yehuh_mouse::TimedMotion :md5sum-) "a2afe94fc48ef0c10e4ed921900e9e4a")
(setf (get yehuh_mouse::TimedMotion :datatype-) "yehuh_mouse/TimedMotion")
(setf (get yehuh_mouse::TimedMotion :request) yehuh_mouse::TimedMotionRequest)
(setf (get yehuh_mouse::TimedMotion :response) yehuh_mouse::TimedMotionResponse)

(defmethod yehuh_mouse::TimedMotionRequest
  (:response () (instance yehuh_mouse::TimedMotionResponse :init)))

(setf (get yehuh_mouse::TimedMotionRequest :md5sum-) "a2afe94fc48ef0c10e4ed921900e9e4a")
(setf (get yehuh_mouse::TimedMotionRequest :datatype-) "yehuh_mouse/TimedMotionRequest")
(setf (get yehuh_mouse::TimedMotionRequest :definition-)
      "int16 left_hz
int16 right_hz
uint32 duration_ms
---
bool sucess

")

(setf (get yehuh_mouse::TimedMotionResponse :md5sum-) "a2afe94fc48ef0c10e4ed921900e9e4a")
(setf (get yehuh_mouse::TimedMotionResponse :datatype-) "yehuh_mouse/TimedMotionResponse")
(setf (get yehuh_mouse::TimedMotionResponse :definition-)
      "int16 left_hz
int16 right_hz
uint32 duration_ms
---
bool sucess

")



(provide :yehuh_mouse/TimedMotion "a2afe94fc48ef0c10e4ed921900e9e4a")


