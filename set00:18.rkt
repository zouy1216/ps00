;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:18) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; rec-sequence : Number -> Image
; GIVEN: an argument n
; RETURN: the nth element in the rectangle sequence.
; EXAMPLES:
; (rec-sequence 3) => an image of a rectangle with the dimension of 8X16
; (rec-sequence 6) => an image of a rectangle with the dimension of 64X128

(define (rec-sequence n) 
  (rectangle (expt 2 n) (expt 2 (+ n 1)) "solid" "blue"))

(rec-sequence 3)
(rec-sequence 6)