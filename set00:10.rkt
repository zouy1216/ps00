;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; sum-of-two : Number Number Number -> Number
; GIVEN: three numbers a, b, c
; RETURNS: the sum of two larger numbers.
; EXAMPLES: 
; (sum-of-two 2 3 3) => 6
; (sum-of-two 5 2 8) => 13

(define (sum-of-two a b c) 
  (cond 
    [(and (< a b) (< a c)) (+ b c)]
    [(and (< b a) (< b c)) (+ a c)]
    [(and (< c a) (< c b)) (+ a b)]))

(sum-of-two 2 3 3)
(sum-of-two 5 2 8)