#lang racket
(define (mult-iter a b counter)
   (cond ((= 0 b) counter)
         ((even? b) (mult-iter (double a) (halve b) counter))
         (else (mult-iter a (- b 1) (+ a counter)))))

(define (mult a b)
   (mult-iter a b 0))

(define (double x)(* 2 x))
(define(halve x)(/ x 2))