;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:25) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; list-true? : List-Of-Booleans -> Boolean
; GIVEN: a list of booleans lst
; RETURNS: true if all booleans in the list are true, false otherwise.
; EXAMPLES:
; (list-true? (list true true true true)) => true
; (list-true? (list true false false)) => false

(define (list-true? lob) 
  (cond
   [(empty? lob) true]
   [else (and (and true (first lob)) (list-true? (rest lob)))]))

(list-true? (list true true true true))
(list-true? (list true false false))