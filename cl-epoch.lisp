(defpackage :cl-epoch
  (:export
    :universal->unix-time
    :unix->universal-time
    :get-epoch-time)
  (:use :common-lisp))
(in-package :cl-epoch)

;;; From Lisp Tips
;;; http://lisptips.com/post/11649360174/the-common-lisp-and-unix-epochs

(defparameter *unix-epoch-difference*
  (encode-universal-time 0 0 0 1 1 1970 0))

(defun universal->unix-time (universal-time)
  (- universal-time *unix-epoch-difference*))

(defun unix->universal-time (unix-time)
  (+ unix-time *unix-epoch-difference*))

(defun get-epoch-time ()
  (universal->unix-time (get-universal-time)))