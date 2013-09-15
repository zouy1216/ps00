;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:29) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(define-struct person (first-name last-name age height weight))
; A person is a (make-person String String Number Number Number).
; It represents the information of a person.
; Interpretation:
; first-name ... the person's first name.
; last-name ... the person's last name.
; age ... the person's age.
; height ... the person's height.
; weight ... the person's weight.

; draw-person : Person -> Image
; GIVEN: the information(first-name, last-name, age, height, weight) of a person 
; as Person
; RETURNS: the image of the given person, reflecting his height and weight.
; EXAMPLES:
; (draw-person (make-person "Mary" "Lively" 24 12 8)) => the image of a person in 
; standard size
; (draw-person (make-person "Malfoy" "Potter" 22 24 16)) => the image of a person 
; twice bigger than standard one

; group-photo : List-Of-People -> Image
; GIVEN: the information of a list of people as lop
; RETURNS: the group photo of these people.
; EXAMPLES:
; (group-photo (list (make-person "Mary" "Lively" 24 12 8) (make-person "Malfoy" 
; "Potter" 22 24 16))) => Mary and Malfoy's group photo

(define (draw-person person) 
   (above (circle (* (person-weight person) 1.5) "outline" "black") (beside 
          (rectangle 4 1 "solid" "blue") (rectangle (person-weight person) 
          (person-weight person) "solid" "yellow") (rectangle 4 1 "solid" "blue")) 
          (rectangle (person-weight person) (person-weight person) "solid" "yellow") 
          (beside (rectangle 1 8 "solid" "blue") (rectangle (/ (person-weight 
          person) 3) 8 "solid" "white") (rectangle 1 8 "solid" "blue"))))

(draw-person (make-person "Mary" "Lively" 24 12 8))
(draw-person (make-person "Malfoy" "Potter" 22 24 16))

(define (group-photo lop) 
  (cond
    [(empty? lop) (rectangle 16 8 "outline" "white")]
    [else (beside (draw-person (first lop)) (group-photo (rest lop)))]))
(group-photo (list (make-person "Mary" "Lively" 24 12 8) (make-person "Malfoy" 
"Potter" 22 24 16)))