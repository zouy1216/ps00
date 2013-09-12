;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; sq : Number -> Number
; GIVEN: the number n to be squared
; RETURNS: the square of the number.
; EXAMPLES:
; (sq 3) => 9
; (sq 5.5) => 30.25

(define (sq n) 
  (* n n))

(sq 3)
(sq 5.5)