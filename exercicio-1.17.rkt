#lang racket

(define (double x)(* 2 x))
(define(halve x)(/ x 2))

(define (even? x)
  (= (remainder 2 x) 0))

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

(define (fast-mult a b)
   (cond ((= b 0) 0)
         ((= b 1) a)
         ((even? b) (double (fast-mult a (halve b))))
         (else (+ a (fast-mult a (- b 1))))))