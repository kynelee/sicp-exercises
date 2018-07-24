;;; Church numerals are functions that that accept one arg, that arg being a function with
;;; one arg. The zero numeral applies its input function zero times, the one
;;; numeral applies its input function one time, etc.. 
(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;;; applies input function f twice to the argument x
(define one 
  (lambda (f) (lambda (x) (f x))))

(define two
  (lambda (f) (lambda (x) (f (f x)))))

;;; inc is a function we can use to test the implementation of our numerals
(define (inc n)
  (+ n 1))
