(define (square x)
  (* x x))

(define (map f items)
  (if (null? items)
  	'()
	  (cons (f (car items)) (map f (cdr items)))))


(define (square-list items)
  (if (null? items)
	  '()
    (cons (square (car items)) 
          (square-list (cdr items)))))

(define (square-list-map items)
  (map square items))

