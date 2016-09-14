#lang racket
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

; 2.18
; Meu reverse é em função do append  - o professor fez um código independente, que coloco como comentário
(define (reverse items)
  (if (empty? items)
      empty
      (append(reverse(cdr items))(list(car items)))))

;(define (reverse items)
;  (define (aux items out)
;    (if (empty? items)
;        out
;        (aux (cdr items) (cons (car items) out))))
;;  (aux items empty))


;2.17 - Solução que dei em sala
(define (last-pair items)
  (car (reverse items)))


