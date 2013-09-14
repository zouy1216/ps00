;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; my-image : Path -> Image
; GIVEN: the path of image to be loaded
; RETURNS: the appearance of the image.

(define my-image (bitmap "image.png"))

(above my-image my-image my-image)
(beside my-image my-image)