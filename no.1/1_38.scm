(define (cont-frac n d k)
    (handle n d k 1))

(define (handle n d k i)
    (cond ((= i k) (/ (n i) (d i)))
        (else (/ (n i) (+ (d i) (handle n d k (+ i 1)))))))

(define (hhhh a b)
    (cond ((< a b) a)
        (else (hhhh (- a b) b))))

;; 整数除法
(define (aaaa a b)
    (cond ((< a b) 0)
        (else (+ 1 (aaaa (- a b) b)))))

(display (cont-frac (lambda (i) 1.0)
                    (lambda (i) (cond ((= (hhhh i 3) 0) 1)
                                      ((= (hhhh i 3) 1) 1)
                                      ((= (hhhh i 3) 2) (* 2 (+ 1 (aaaa i 3))))))
                    10))

; e=2.718281828459
; 输出 0.7182817182817183