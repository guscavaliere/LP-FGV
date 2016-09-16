#lang racket
(require racket/trace)
;
;(define (fringe items)
;  (cond ((empty? items) empty)
;        (not (pair? items)(list items))
;        (else(append(fringe (car items))(fringe(cdr items))))))

(define teste (list (list 1 2)(list 3 4) (list 5 6)))





(define (fringe tree)
  (cond ((null? tree) null)
        ((not (pair? tree)) (list tree))
        (else (append (fringe (car tree))
                      (fringe (cdr tree))))))

(fringe teste)
(trace fringe)