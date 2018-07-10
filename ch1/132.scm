; general accumulator recursively
(define (accumulate combiner null-value term a next b)
  (if (> a b)
	null-value
	(combiner (term a) (accumulate combiner null-value term (next a) next b))))

; general accumulator iteratively
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
	(if (> a b)
	  result
	  (iter (next a) (combiner result (term a)))))
  (iter a null-value))
	

(define (identity x) x)
(define (inc x) (+ x 1))

; general sum over range given function & step
(define (sum-iter term a next b)
  (accumulate-iter + 0 term a next b))

; general product over range given function & step 
(define (product-iter term a next b)
  (accumulate-iter * 1 term a next b))

; sum-integers using sum
(define (sum-integers a b)
  (sum-iter identity a inc b))

(define (factorial x)
  (product-iter identity 1 inc x))

