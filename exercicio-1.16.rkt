#lang racket
; O exercício é bem simples quando você consegue pegar o raciocínio matemático
; a gente tem que colocar algumas definições primeiro - usei algmas que ele já dá no livro, para simplificar (even e square)
(define (square x)(* x x))
(define (even? n)(=(remainder n 2)0))
;depois fiz a definição do procedure expo, que vai ser o procedimento geral. A gente não vai chamar ele diretamente.
(define (expo b n a)
  (cond ((= 0 n) a)
        ((even? n) (expo (square b)(/ n 2) a))
        (else (expo b ( - 1 n)(* a b)))))

; O racíocinio é muito legal. Como o livro dá a expressão usada na segunda linha, fica muito simples. Se o n for zero - o que eventualmente vai acontecer.
; se o n for par, a gente usa a expressão do livro e diminui o expoente, consequentemente. Mais perto do zero :)
; se o n for ímpar, a gente diminui 1 do expoente - tornando ele par - e multiplica 'a' por b.
; lembrando sempre que o resultado final vai ser o a
; dá pra entender bem se você fizer o desenvolvimento do código à mão. Daí dá pra ver que o processo é iterativo, e não recursivo.

;agora é a hora de chamar o procedimento mais específico, como ele pede. Esse procedimento chama o expo, fixando o 'a' inicial em 1
(define (expo-suave b n)
  (expo b n 1))

; hora de testar!

(expo-suave 10 2)
(expo-suave 55 3)
(expo-suave 333333 7)
  

