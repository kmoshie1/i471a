(define quadratic-roots
  (lambda (a b c (my-sqrt-fn sqrt)) 
    (if (= a 0) 'error 
      (let ([discriminant (my-sqrt-fn (- (expt b 2) (* 4 a c)))])
        (list (/ (+ (- 0 b) discriminant) (* 2 a))
	  (/ (- (- 0 b) discriminant) (* 2 a)))))))

(define my-sqrt
  (lambda (n (guess 1.0))
    (if (< (abs (/ (- (* guess guess) n) n)) .0001) 
       guess
	 (my-sqrt n (/ (+ guess (/ n guess)) 2)))))

(define greater-than
  (lambda (ls (v 0))
    (let ([list1  '()])
    (if (null? ls)
	list1
	(if (> (car ls) v) 
	   ((append list1 '(#t))(greater-than (cdr ls) v ))
	   ((append list1 '(#f))(greater-than (cdr ls) v ))
	)))))

