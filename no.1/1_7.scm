(define (sqrt x)
    (sqrt-iter 1.0 x x))

(define (sqrt-iter new-guess old-guess x)
    (if (good-enough? new-guess old-guess)
        new-guess
        (sqrt-iter (improve new-guess x) new-guess x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))
; 通过new-guess和old-guess的变化率判断是否已经足够接近
(define (good-enough? new-guess old-guess)
    (< (/ (abs (- new-guess old-guess)) old-guess) 0.001))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (xx x)
    (* x x))

(display (sqrt 9))

(display (sqrt (xx 0.000000001)))

(display (sqrt (xx 100000000000000000000000000000000)))