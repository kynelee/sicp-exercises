; Recursive O(n) steps O(n) space
(define (expt b n)
  (if (= n 0)
	1
	(* b (expt b (- n 1)))))

; Tail recursive O(n) steps, O(1) space
(define (expt-tail b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
	product
	(expt-iter b
			   (- counter 1)
			   (* b product))))
			   
(define (square x)
  (* x x))

(define (even? n)
  (= (remainder n 2) 0))

; O(logn) steps and space
; b^n = (b^n/2)^2 if n is even
; b^n = b * b^n-1 if n is odd
(define (fast-expt b n)
  (cond ((= n 0) 1)
		((even? n) (square (fast-expt b (/ n 2))))
		(else (* b (fast-expt b (- n 1))))))

; O(logn) steps, O(1) space)
; hint: a * b^n is unchanged from state to state
; hint: b^n = (b^n/2)^2 = (b^2)^n/2

(define (fast-expt-tail b n)
  (fast-expt-iter b n 1))


(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
		((even? n) (fast-expt-iter (square b)
								   (/ n 2) 
								   a))
		(else (fast-expt-iter b
							  (- n 1)
							  (* a b)))))
								   




