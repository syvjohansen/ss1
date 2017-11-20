#lang racket
(define (replace x y list)
 (cond
  ((null? list) '())
  ((list? (car list)) (cons (replace x y (car list)) (replace x y (cdr list))))
  ((eq? (car list) x) (cons y (replace x y (cdr list))))
  (else
   (cons (car list) (replace x y (cdr list))))))

(replace "x" "y" '("x" "y" "z" "a"))
(replace 1 2 '(1 2 3 4 5 6))