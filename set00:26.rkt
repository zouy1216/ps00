;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:26) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; drawing-circle : List-Of-Posns -> Image
; GIVEN: a list of Posns
; RETURNS: a 300X300 scene on which solid blue circles are drawn at every Posn in 
; the list.
; EXAMPLES:
; (drawing-circle (list (make-posn 30 100) (make-posn 220 80) (make-posn 170 55))) 
; => an image with three solid blue circles
; (drawing-circle (list (make-posn 200 100) (make-posn 0 300))) => an image with 
; two solid blue circles

(define (drawing-circle lop) 
  (cond
    [(empty? lop) (empty-scene 300 300)]
    [else (place-image (circle 10 "solid" "blue") (posn-x (first lop)) (posn-y 
                  (first lop)) (drawing-circle (rest lop)))]))

(drawing-circle (list (make-posn 30 100) (make-posn 220 80) (make-posn 170 55)))
(drawing-circle (list (make-posn 200 100) (make-posn 0 300)))