;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(define head (circle 8 "outline" "black"))
(define arm (rectangle 4 1 "solid" "blue"))
(define chest (rectangle 12 12 "solid" "yellow"))
(define feet (rectangle 1 8 "solid" "blue"))
(above head (beside arm chest arm) 
       chest (beside feet (rectangle 4 8 "solid" "white") feet))