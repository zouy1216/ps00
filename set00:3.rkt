;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celcius.
; EXAMPLES:
; (f->c 32) => 0
; (f->c 100) => 37.77777777777778

(define (f->c f) 
  (* (- f 32) 
     (/ 5 9)))

(f->c 32)
(f->c 100)