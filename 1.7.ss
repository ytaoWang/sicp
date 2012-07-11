; this is a excercise 1.7 answer,but i can't be sure whether it is right 
; or not.
;
(define (sqrt x)
  (sqrt-iter 1.0 x 0))

;;; mainly change for this function
(define (good-enough? guess last)
  (< (abs (- (square guess) (square last))) 0.001))

(define (sqrt-iter guess x last)
  (if (good-enough? guess last)
      guess
      (sqrt-iter (improve guess x) x guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

