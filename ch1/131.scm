; recursive general product
(define (product f a next b)
  (if (> a b)
	1
	(* (f a)
	   (product f (next a) next b))))

(define (product-iter f a next b)
  (define (product-iter-helper a result)
	(if (> a b)
	  result
	  (product-iter-helper (next a)
						   (* (f a) result))))
  (product-iter-helper a 1))


(define (inc x) (+ x 1))
(define (identity x) x)

(define (factorial x)
  (product identity 1 inc x))
  
