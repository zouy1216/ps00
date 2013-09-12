;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; even?? : Number -> Boolean
; GIVEN: a number n to be tested if it is divisible by 2
; RETURNS: true if it is divisible by 2 and false otherwise
; EXAMPLES: 
; (even?? 8) => true
; (even?? 13) => false

(define (even?? n) 
  (= (remainder n 2) 0))

(even?? 8)
(even?? 13)