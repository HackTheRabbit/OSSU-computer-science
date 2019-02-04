;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lenguaje-BSL) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;definoción de constantes
(define NUM1 5)
(define NUM2 (+ NUM1 10))

;values (numbers, strings, images, booleans)
(+ 2 2)
(string-append "hola Mundo" " " "cabrón")
(square 10 "solid" "red")
(* NUM2 2)
(+ 5 90)
true
false

;operadores con strings
(string-append "Hola" " " "Mundo")
(substring "Hola" 2 4)
(string-length "Mundo")

;libreria image
(overlay (star 5 "solid" "white")
         (circle 7 "solid" "red")
         (circle 10 "solid" "white")
         (circle 10 "outline" "red"))

;Funciones
;(define (<name-function> <name-parameter(s)>)
;         <expression(body)>)
;(<name-of-define-function> <parameter>)
(define (bulb c)
  (circle 10 "solid" c))

(above (bulb "magenta") (bulb "red"))

;Booleans 
(> NUM1 NUM2)
(string=? "foo" "bar")

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))
(< (image-width I1)
   (image-width I2))

;if expressions
; (if <expression question>
;     <expression-true>)
;     <expression-flase>
(if (< (image-width I1)
       (image-width I2))
    "tall"
    "wide")

(and (> (image-height I1) (image-height I2))
     (< (image-width I1) (image-width I2)))

radial-star