;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; sumOfTwo : Number Number Number -> Number
; GIVEN: three numbers a, b, c
; RETURNS: the sum of two larger numbers
; EXAMPLES: 
; (sumOfTwo 2 3 3) => 6
; (sumOfTwo 5 2 8) => 13

(define (sumOfTwo a b c) 
  (cond 
    [(and (< a b) (< a c)) (+ b c)]
    [(and (< b a) (< b c)) (+ a c)]
    [(and (< c a) (< c b)) (+ a b)]))

(sumOfTwo 2 3 3)
(sumOfTwo 5 2 8)