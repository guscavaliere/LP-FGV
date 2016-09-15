#lang racket
(define (for-each op items)
  (define (dispatch items)
    (cond ((empty? items)true)
          ((not(empty? items)) (op (car items)) (for-each op (cdr items)))))
  (dispatch items
            ))


