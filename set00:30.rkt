;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:30) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; neg-list : List-Of-Booleans -> List-Of-Booleans
; GIVEN: a list of Booleans as argument lob
; RETURNS: a list of reversed Booleans.
; EXAMPLES:
; (neg-list (list true false true)) => (list false true false)
; (neg-list (list false false false true)) => (list true true true false)

(define (neg-list lob) 
  (cond 
    [(empty? lob) empty]
    [else (cons (not (first lob)) (neg-list (rest lob)))]))

(neg-list (list true false true))
(neg-list (list false false false true))