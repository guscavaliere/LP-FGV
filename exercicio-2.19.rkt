#lang racket






;(define (count-change amount country)
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount (first-denomination coin-values))
                coin-values)))))
(define (first-denomination items)
  (if (empty? items)
      empty
      (car items)))
(define (except-first-denomination items)
  (if (empty? items)
      empty
      (cdr items)))

(define (no-more? items)
  (empty? items))

;  (cond ((string=? country "US")
;      (cc amount us-coins))
;      ((string=? country "UK") (cc amount uk-coins))
;      (else (error "COUNTRY NOT IN LIST"))))
;    


(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))



