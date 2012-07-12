(define (gcd-item a b f)
  (if (= b 0)
      a
      (gcd-item b (f a b) f)
   )
  )

(define (gcd a b)
  (gcd-item a b (lambda (a b) (remainder a b)))
)

