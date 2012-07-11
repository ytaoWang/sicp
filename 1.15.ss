(define (sin-iter x cube)
  ((let (
         (y x)
         (a (/ x 3.0))
         )
     ((begin 
      (set! num (+ num 2))
      (if (> (abs y) 0.1)
      (- (* 3 (sin-iter a cube)) (* 4 (cube (sin-iter a cube))))
      x
     ))))
   ))

(define num 0)
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (cube x) (* x x x))
(define (abs x)
  (if (> x 0) 
      x
      (- x)
      ))
(define (sine angle)
  ((if (not (> (abs angle) 0.1))
       angle
       (p (sine (/ angle 3.0)))))
  )

(define (sin x)
  (begin (sin-iter x (lambda (x) (* x x x)))
         )
  )