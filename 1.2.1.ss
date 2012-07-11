; This program is used to calculate n!
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(define (factore n)
  (factore-iter 1 1 n))

(define (factore-iter product counter max-count)
  (if (> counter max-count)
      product
      (factore-iter (* counter product)
                    (+ counter 1)
                    max-count)))

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))
        ))

(define (fib2 n)
  (fib-iter n 0 1))

(define (fib-iter counter a b)
  (cond ((= counter 0) b)
;        ((= counter 1) 1)
        (else (fib-iter (- counter 1) (+ a b) a)))
  )


(define (fib2-iter a b)
  ((let ((x (+ a b))
         (y a))
     (+ x y)))
)