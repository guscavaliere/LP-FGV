#lang racket
;Definições necessárias
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2)) add-dx b)
     dx))

(define (inc x)(+ 1 x))

(define (cube x)(* x x x))

;Código em si

(define (simpsons-rule f a b n)
  (let(( h (/(- b a) n)))
  (define( y k)
      (f(+ a(* k h))))
    
    (define (term k)
      (* (cond ((odd? k) 4)
               ((= 0 k) 1)
               ((= k n) 1)
               (else 2))
         
         ( y k)))


(/ (* h (sum term 0 inc n)) 3)))



(define (even? x)(= (remainder x 2) 0))
(define (odd? x) (= (remainder x 2) 1))