;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:27a) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; list-of-string-append-2 : List-Of-Strings -> Image
; GIVEN: a list of strings
; RETURN: an image that combines texts of strings in the list, separated by spaces.
; EXAMPLES:
; (list-of-string-append-2 (list "Hello" "World" "!")) => an image of "Hello World 
; !"
; (list-of-string-append-2 (list "What" "time" "is" "it" "?")) => an image of 
; "What time is it ?"

(define (list-of-string-append-2 los) 
  (cond
    [(empty? los) (text "" 12 "black")]
    [else 
     (cond
       [(empty? (rest los)) (text (first los) 12 "black")]
       [else (beside (text (first los) 12 "black") (text " " 12 "black") 
                     (list-of-string-append-2 (rest los)))])]))

(list-of-string-append-2 (list "Hello" "World" "!"))
(list-of-string-append-2 (list "What" "time" "is" "it" "?"))