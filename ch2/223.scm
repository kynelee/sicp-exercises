(define (for-each proc items)
   (cond ((null? items) #t)
         (else (proc (car items))
							 (for-each proc (cdr items)))))
							 
;;; Apparently ifs can't have two clauses execute after without a workaround							
(define (for-each-if proc items)
	(if (null? items) '()
		((proc (car items))
		 (for-each proc (cdr items)))))
