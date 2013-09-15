;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; list-of-string-append : List-Of-Strings -> String
; GIVEN: a list of strings
; RETURN: a string that combines texts of strings in the list, separated by spaces.
; EXAMPLES:
; (list-of-string-append (list "Hello" "World" "!")) => "Hello World !"
; (list-of-string-append (list "What" "time" "is" "it" "?")) => "What time is it ?"

(define (list-of-string-append los) 
  (cond
    [(empty? los) ""]
    [else 
     {cond 
       [(empty? (rest los)) (first los)]
       [else (string-append (first los) " " (list-of-string-append (rest los)))]}]))

(list-of-string-append (list "Hello" "World" "!"))
(list-of-string-append (list "What" "time" "is" "it" "?"))