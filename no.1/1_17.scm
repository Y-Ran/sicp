(define (double x)
    (+ x x))

(define (halve n)
    (/ n 2))

(define (even? n)
    (= (remainder n 2) 0))

(define (odd? n)
    (= (remainder n 2) 1))

; 取余数
(define (remainder n x)
    (if (< n x)
        n
        (remainder (- n x) x)))

(define (fast-mul x i y)
    (cond ((= i 1) x)
        ((even? i) (double (fast-mul x (halve i) y)))
        (else (+ x (fast-mul x (- i 1) y)))))

(define (mul x y)
    (fast-mul x y y))

(trace fast-mul)

(display (mul 3 6))

(display (sin 1))