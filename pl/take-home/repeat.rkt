#lang racket

(define (repeat? lst)
 (define (repeat2 re lst)
  (or (null? lst)
      (and (eq? re (car lst))
           (repeat2 (car lst) (cdr lst)))))
 (or (null? lst)
     (repeat2 (car lst) (cdr lst))))


  

(repeat? '(7 7 7 7 7 7 7 7))
(repeat? '(repeat repeat repeat repeat))
(repeat? '(1 2 1 1 2 4 12))
(repeat? '(1 (1(1(1)))))

