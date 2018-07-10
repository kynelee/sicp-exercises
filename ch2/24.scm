; cons returns a function takes a function as an arg, and applies the
; function to the pair x, y 
(define (cons x y)
  (lambda (m) (m x y)))

; lambda (p q) is defined as the lambda(m) function in cons, and is
; evaluated with the args x y
(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))


(define x (cons 1 2))
(car x)
(cdr x)
  
