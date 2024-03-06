(define (double func)
    (lambda (x) (func (func x))))

(define (inc x)
    (+ x 1))

(display ((double inc) 1))

(display (((double (double double)) inc) 5))