;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:24) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; list-product : List -> Number
; GIVEN: a list to be calculated
; RETURNS: the product of all the numbers in the given list.
; EXAMPLES:
; (list-product (list 1 2 3)) => 6
; (list-product (list 3 6 0)) => 0

(define (list-product lst) 
  (cond
    [(empty? lst) 0]
    [else 
     (cond
       [(empty? (rest lst)) (first lst)]
       [else (* (first lst) (list-product (rest lst)))])]))

(list-product (list 1 2 3))
(list-product (list 3 6 0))