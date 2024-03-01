(define (cont-frac n d k)
    (handle n d k 1))

(define (handle n d k i)
    (cond ((= i k) (/ (n 1) (d 1)))
        (else (/ (n 1) (+ (d 1) (handle n d k (+ i 1)))))))

(display (cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           10))
; 0.6179775280898876

(newline)

(define (cont-frac-2 n d k)
    (handle-2 n d k 1 0))

(define (handle-2 n d k i a)
    (cond ((> i k) a)
        (else (handle-2 n d k (+ i 1) (/ (n 1) (+ (d 1) a))))))

(display (cont-frac-2 (lambda (i) 1.0)
           (lambda (i) 1.0)
           10))
; 0.6179775280898876