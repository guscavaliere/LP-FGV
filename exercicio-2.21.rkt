#lang racket
(define (square-list items)
  (if (empty? items)
      empty
      (cons ((lambda (x) (* x x)) (car items)) (square-list (cdr items)))))

(define (square-list2 items)
  (map (lambda (x)(* x x)) items))