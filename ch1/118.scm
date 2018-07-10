; log step multiplication iteratively 
(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (fast-mult-tail  a b)
  (fast-mult-iter a b 0))

(define (fast-mult-iter a b i)
  (cond ((= b 0) i)
		((even? b) (fast-mult-iter (double a)
								   (halve b)
								   i))
		(else (fast-mult-iter a
							  (- b 1)
							  (+ i a)))))

