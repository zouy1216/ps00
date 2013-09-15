;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:32) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; distance-cal : Posns -> Number
; GIVEN: a posn p
; RETURNS: the Manhattan distance of the posn from (0,0), using the measure (distance 
; = x + y).
; EXAMPLES:
; (distance-cal (make-posn 3 5)) => 8
; (distance-cal (make-posn 8 2)) => 10

; distance-sum : List-Of-Posns -> Number
; GIVEN: a list of Posns as an argument lop
; RETURNS: the sum of the Manhattan distances of the Posns.
; EXAMPLES:
; (distance-sum (list (make-posn 3 5) (make-posn 8 2))) => 18
; (distance-sum (list (make-posn 6 9) (make-posn 0 3))) => 18

(define (distance-cal p) 
  (+ (posn-x p) (posn-y p)))

(distance-cal (make-posn 3 5))
(distance-cal (make-posn 8 2))

(define (distance-sum lop) 
  (cond 
    [(empty? lop) 0]
    [else (+ (distance-cal (first lop)) (distance-sum (rest lop)))]))

(distance-sum (list (make-posn 3 5) (make-posn 8 2)))
(distance-sum (list (make-posn 6 9) (make-posn 0 3)))