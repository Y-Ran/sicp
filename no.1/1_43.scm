(define (square x)
    (* x x))

(define (inc x)
    (+ x 1))

(define (repeated f n)
    (define (handle f n x)
        (cond ((= n 1) (f x))
            (else (f (handle f (- n 1) x)))))
    (lambda (x) (handle f n x)))

(display ((repeated inc 2) 5))