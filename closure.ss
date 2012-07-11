(define (counter) 
  (let ((x 0))
  (define (increment)
    (begin (set! x (+ x 1)) x) ;;(display x)
    )
  (increment)
  ))

(define (counter0) 
  (let ((count 0))
    (lambda () ((set! count (+ count 1)) count))
  )
  )

(define count
  (let ((next 0))
    (lambda ()
      (let ((v next))
        (set! next (+ next 1))
        v))))

(define make-counter
  (lambda ()
    (let ((next 0))
    (lambda ()
      (let ((v next))
        (set! next (+ next 1))
        v)))))

(define counter1 (make-counter))
(define counter2 (make-counter))

;(define counter1 counter0)
;(define counter2 counter)