(define (reverse items)
  (if (null? items)
	'()
  	(append (reverse (cdr items))
		  	(list (car items)))))


(define (deep-reverse items)
  (cond ((null? items) '())
		((pair? (car items))
		 (append (deep-reverse (cdr items))
				 (list (deep-reverse (car items)))))
		(else
		  (append (deep-reverse (cdr items))
				  (list (car items))))))

