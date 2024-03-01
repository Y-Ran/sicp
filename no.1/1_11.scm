; 递归
(define (func_one n)
    (cond ((< n 3) n)
        (else (+ (func_one (- n 1)) (* 2 (func_one (- n 2))) (* 3 (func_one (- n 3)))))))

(trace func_one)

(display (func_one 4))

; 迭代
(define (handle a b c count n)
        (cond ((= count n) (+ a (* 2 b) (* 3 c)))
            (else (handle (+ a (* 2 b) (* 3 c)) a b (+ count 1) n))))

(define (func_two n)
    (cond ((< n 3) n)
        (else (handle 2 1 0 3 n))))
(trace func_two)
(trace handle)

(display (func_two 5))