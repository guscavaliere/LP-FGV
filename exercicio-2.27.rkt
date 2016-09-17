#lang racket

(require racket/trace)

(define (deep-reverse items)
  (if (empty? items )
      empty
      (append(deep-reverse (cdr items))
             (list(if (pair? (car items))
                      (deep-reverse(car items))
                      (car items))))))


#|(define (deep-reverse items)
  (cond ((null? items) null)
        ((pair? (car items))
         (append (deep-reverse (cdr items))
                 (list (deep-reverse (car items)))))
        (else
         (append (deep-reverse (cdr items))
                 (list (car items))))))


(define (deep-reverse lst)
  (if (list? lst)
      (reverse (map deep-reverse lst))
      lst))


(define (deep-reverse items)
  (if (empty? items)
      empty
      (append (deep-reverse (cdr items))
              (list (if (pair? (car items))
                        (deep-reverse (car items))
                        (car items))))))|#


(define teste (cons 1 (cons 2(cons (cons 3 empty) (cons 5 empty)))))

(trace deep-reverse)

(deep-reverse teste)
;               
