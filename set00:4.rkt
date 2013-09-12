;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; tip : Number Number -> Number
; GIVEN: the amount of the bill b in dollars and the percentage of tip t
; RETURNS: the amount of the tip in dollars.
; EXAMPLES:
; (tip 10 0.15) => 1.5
; (tip 20 0.17) => 3.4

(define (tip b t) 
  (* b t))

(tip 10 0.15)
(tip 20 0.17)