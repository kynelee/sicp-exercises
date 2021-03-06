(define (filtered-accumulate combiner null-value filt term a next b)
  (if (> a  b)
	null-value
	(if (filt a)
	  (combiner (term a) (filtered-accumulate combiner null-value filt term (next a) next b))
	  (filtered-accumulate combiner null-value filt term (next a) next b))))

(define (sum filt term a next b)
  (filtered-accumulate + 0 filt term a next b))

(define (sum-primes a b)
  (sum prime? identity a inc b))

(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (prime? n)
  (= n (smallest-divisor n)))
(define (identity x) x)
(define (inc x) (+ x 1))
