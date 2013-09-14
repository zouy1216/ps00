;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:15) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define-struct student (id name major))
;; A Student is a (make-student Number String String).
;; It represents the information of a student.
;; Interpretation:
;;   id ... the id of the student.
;;   name ... student's name.
;;   major ... student's major.