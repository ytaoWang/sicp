; this program for exercise 1.8

(define (cube x)
  (define (improve y x)
    (/ (+ (/ x (square y)) (* 2 y)) 3)
    )
  (define (good-enough? y x)
    (< (abs (- (expt y 3) x)) 0.001))
  (define (cube-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-iter (improve guess x) x)))
  (cube-iter 1.0 x))