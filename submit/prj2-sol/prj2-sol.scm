;;-*- mode: scheme; -*-
;; :set filetype=scheme


;;Return the list resulting by multiplying each element of `list` by `x`.
(define (mul-list list x)
  (if (null? list)
      '()
      (cons (* x (car list)) (mul-list (cdr list) x)))) ;TODO

;;Given a proper-list list of proper-lists, return the sum of the
;;lengths of all the top-level contained lists.
(define (sum-lengths list)
  (if (null? list)
      0
      (+ (length (car list)) (sum-lengths (cdr list)))))

;;Evaluate polynomial with list of coefficients coeffs (highest-order
;;first) at x.  The computation should reflect the traditional
;;representation of the polynomial.
(define (poly-eval coeffs x)
  (foldr + 0 (map * coeffs (map expt (build-list (length coeffs) (lambda (i) x)) (reverse (build-list (length coeffs) values))))))
  ;;got help from stack overflow
  
  ;;(if (null? coeffs)
  ;;    0
  ;;    (+ (* (car coeffs) (expt x (car coeffs))) (poly-eval (cdr coeffs) x))))
  ;;    (+ (*(car coeffs) (expt x (car coeffs))) (poly-eval (cdr coeffs) x))))
      

;;Evaluate polynomial with list of coefficients coeffs (highest-order
;;first) at x using Horner's method.
(define (poly-eval-horner coeffs x)
  (define (tail exp list n temp)
    (cond ((null? list) temp)
    (else (tail exp (rest list) (- n 1) (+ temp (* (first list) (expt exp n)))))))
  (tail x coeffs (sub1 (length coeffs)) 0))
;;got help from stack overflow


;;Return count of occurrences equal? to x in exp
(define (count-occurrences exp x)
;;  (let ([y 0])
;;  (if (null? exp)
;;   0
;;    (if (equal? x (car exp))
;;      ((+ y 1) (count-occurrences (cdr exp) x))
;;      (if (list? x)
;;        (if (equal? x (car (cdr exp)))
;;	  ((+ y 1) (count-occurences (cdr exp) x))	
;;          (count-occurrences (cdr exp) x)
;;	  )
;;	(count-occurrences (cdr exp) x))))))
(cond ((null? exp) 0)
      ((list? (car exp)) (+ (count-occurrences (car exp) x) (count-occurrences (cdr exp) x)))
      ((equal? (car exp) x) (+ 1 (count-occurrences (cdr exp) x)))
      (else (count-occurrences (cdr exp) x))))
	;;got help from stack overflow i think

;;Return result of evaluating arith expression over Scheme numbers
;;with fully parenthesized prefix binary operators 'add, 'sub, 'mul
;;and 'div.
(define (arith-eval exp)
  (define (add exp1 exp2)
    (+ exp1 exp2))
  (define (sub exp1 exp2)
    (- exp1 exp2))
  (define (mul exp1 exp2)
    (* exp1 exp2))
  (define (div exp1 exp2)
    (/ exp1 exp2))
  exp)
;;  (if (null? exp)
;;      0
;;      (if (equal? 'add (car exp))
;;		  (add (cadr exp) (arith-eval (cdr exp)))
;;		  (if (equal? 'sub (car exp))
;;		  	(sub (cadr exp) (arith-eval (cdr exp)))
;;			(if (equal? 'mul (car exp))
;;		  		(mul (cadr exp) (arith-eval (cdr exp)))
;; 				(if (equal? 'div (car exp))
;;		  			(div (cadr exp) (arith-eval (cdr exp)))
;;					(cadr(exp))))))))



;;Given a proper-list list of proper-lists, return sum of lengths of
;;all the contained lists.  Must be tail-recursive.
(define (sum-lengths-tr list)
  (if (null? list)
      0
      (+ (length (car list)) (sum-lengths-tr (cdr list)))))

;;Evaluate polynomial with list of coefficients coeffs (highest-order
;;first) at x.  Must be tail-recursive.
(define (poly-eval-horner-tr coeffs x)
  (define (tail exp list n temp)
    (cond ((null? list) temp)
    (else (tail exp (rest list) (- n 1) (+ temp (* (first list) (expt exp n)))))))
  (tail x coeffs (sub1 (length coeffs)) 0))
;;got help from stack overflow

;;Return the list resulting by multiplying each element of `list` by `x`.
;;Cannot use recursion, can use one or more of `map`, `foldl`, or `foldr`.
(define (mul-list-2 list x)
  (if (null? list)
      '()
      (map (lambda (n) (* n x)) list )))

;;Given a proper-list list of proper-lists, return the sum of the
;;lengths of all the contained lists.  Cannot use recursion, can use
;;one or more of `map`, `foldl`, or `foldr`.
(define (sum-lengths-2 list)
  (if (null? list)
      0
      (foldl(lambda (x y) (+ (length x) y)) 0 list)))

		     
