;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:31) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; drawing-circles : List-Of-Numbers -> List-Of-Images
; GIVEN: a list of Numbers as an argument lon
; RETURNS: a list of circle images that each has a radius based on the number in 
; the list.
; EXAMPLES:
; (drawing-circles (list 8 10 12)) => a list of images represent circles of 8,10,12
; (drawing-circles (list 5 3)) => a list of images represent circles of 5,3

(define (drawing-circles lon) 
  (cond
    [(empty? lon) empty]
    [else (cons (circle (first lon) "solid" "blue") (drawing-circles (rest lon)))]))

(drawing-circles (list 8 10 12))
(drawing-circles (list 5 3))