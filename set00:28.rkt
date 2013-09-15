;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:28) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; drawing-text : List-Of-Lists-Of-Strings -> Image
; GIVEN: a list of lists of strings as an argument lol
; RETURNS: an image that shows all the lists.
; EXAMPLES:
; (drawing-text (list (list "What" "time" "is" "it" "?") (list 
; "It's" "11:05am" "."))) => an image that shows the conversation
; (drawing-text (list (list "Nice" "to" "meet" "you" "!") (list 
; "Nice" "to" "meet" "you" "," "too" "!"))) => an image that shows the 
; convesation.

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

(define (drawing-text lol) 
  (cond 
    [(empty? lol) (text "" 12 "black")]
    [else (above (text (list-of-string-append (first lol)) 12 "black") 
                 (drawing-text (rest lol)))]))

(drawing-text (list (list "What" "time" "is" "it" "?") (list "It's" 
"11:05am" ".")))
(drawing-text (list (list "Nice" "to" "meet" "you" "!") (list "Nice" 
"to" "meet" "you" "," "too" "!")))