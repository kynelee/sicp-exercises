; log step multiplication
(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (fast-mult a b)
  (cond ((= b 0) 0)
		((= b 1) a)
		((even? b) (fast-mult (double a)
							  (halve b)))
		(else (+ a (fast-mult a (- b 1))))))

