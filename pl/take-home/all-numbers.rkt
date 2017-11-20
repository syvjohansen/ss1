#lang racket


(define (all-numbers? lst)
  
  
  (cond ((null? lst) #t)
        ((list? (car lst)) (all-numbers? (car lst)))
        ((not (integer? (car lst))) #f)
        (else  (all-numbers? (cdr lst)))))
  
         
(all-numbers? (list 1 "yes" 3 4 5))
(all-numbers? '(1 2 (3 4) 5))
(all-numbers? '(1 2 ("yo" 4)))
(all-numbers? '(1 2 (4 (4 "yo"))))