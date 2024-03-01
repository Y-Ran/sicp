(define (func x y)
    (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (func (- x 1) (func x (- y 1))))))

(define (h n) (func 2 n))

(display (h 4))