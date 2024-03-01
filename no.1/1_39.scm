(define (cont-frac n d k)
    (handle n d k 1))

(define (handle n d k i)
    (cond ((= i k) (/ (n i) (d i)))
        (else (/ (n i) (+ (d i) (handle n d k (+ i 1)))))))

(define (tan-cf x k)
    (cont-frac (lambda (i) (cond ((= i 1) x)
                                   (else (- (* x x)))))
               (lambda (i) (+ 1 (* 2 (- i 1))))
               k))

(display (tan-cf 1.0 10))