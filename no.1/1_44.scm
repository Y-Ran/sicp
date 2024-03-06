(define dx 0.00001)

(define (smooth f)
    (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (repeated f n)
    (define (handle f n x)
        (cond ((= n 1) (f x))
            (else (f (handle f (- n 1) x)))))
    (lambda (x) (handle f n x)))

(define (smooth-n n)
    (repeated smooth n))

