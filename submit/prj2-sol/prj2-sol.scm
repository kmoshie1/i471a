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
      (1)))  ;TODO

;;Evaluate polynomial with list of coefficients coeffs (highest-order
;;first) at x.  The computation should reflect the traditional
;;representation of the polynomial.
(define (poly-eval coeffs x)
  '())  ;TODO

;;Evaluate polynomial with list of coefficients coeffs (highest-order
;;first) at x using Horner's method.
(define (poly-eval-horner coeffs x)
  '())  ;TODO

;;Return count of occurrences equal? to x in exp
(define (count-occurrences exp x)
  '())  ;TODO

;;Return result of evaluating arith expression over Scheme numbers
;;with fully parenthesized prefix binary operators 'add, 'sub, 'mul
;;and 'div.
(define (arith-eval exp)
  '())  ;TODO

;;Given a proper-list list of proper-lists, return sum of lengths of
;;all the contained lists.  Must be tail-recursive.
(define (sum-lengths-tr list)
  '())  ;TODO

;;Evaluate polynomial with list of coefficients coeffs (highest-order
;;first) at x.  Must be tail-recursive.
(define (poly-eval-horner-tr coeffs x)
  '())  ;TODO

;;Return the list resulting by multiplying each element of `list` by `x`.
;;Cannot use recursion, can use one or more of `map`, `foldl`, or `foldr`.
(define (mul-list-2 list x)
  (if (null? list)
      '()
      (map (lambda (n) (* n x)) list )))  ;TODO

;;Given a proper-list list of proper-lists, return the sum of the
;;lengths of all the contained lists.  Cannot use recursion, can use
;;one or more of `map`, `foldl`, or `foldr`.
(define (sum-lengths-2 list)
  '())  ;TODO

		     
