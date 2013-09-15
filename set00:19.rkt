;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:19) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; rel-rec-sequence : Number Number -> Rectangle
; GIVEN: two numbers m and n, where m is the width of the rectangle, and n is the 
; proportion of width so height = width * proportion
; RETURNS: an image of a solid blue rectangle with the dimension defined above.
; EXAMPLES:
; (rel-rec-sequence 2 3) => an image of rectangle with the dimension of 2X6
; (rel-rec-sequence 3 1) => an image of rectangle with the dimension of 3X3

(define (rel-rec-sequence m n) 
  (rectangle m (* m n) "solid" "blue"))

(rel-rec-sequence 2 3)
(rel-rec-sequence 3 1)

; rec-sequence-2 : Number -> Image
; GIVEN: an argument n
; RETURN: the nth element in the rectangle sequence without using any function of
; the image library.
; EXAMPLES:
; (rec-sequence-2 3) => an image of a rectangle with the dimension of 8X16
; (rec-sequence-2 6) => an image of a rectangle with the dimension of 64X128

(define (rec-sequence-2 n) 
  (rel-rec-sequence (expt 2 n) 2))

(rec-sequence-2 3)
(rec-sequence-2 6)