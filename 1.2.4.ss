(define (expt b n)
  (if (= n 0) 
       1
       (* b (expt b (- n 1))))
  )


(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b (- counter 1) (* b product)))
  )

(define (expt1 b n)
  (expt-iter b n 1)
  )
(define (even? n)
  (= (remainder n 2) 0))
(define (square n) 
  (* n n))

(define (expt2 b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expt2 b (/ n 2))))
        (else (* b (expt2 b (- n 1))))
))
