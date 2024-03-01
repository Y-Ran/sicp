; 用迭代的方式求幂计算过程，只用对数个步骤
; b基数 n指数 i从n到1 a结果
(define (fast-expt b a i n)
    (cond ((= n 0) 1)
        ((= i 1) a)
        ((even? i) (fast-expt b (square a) (/ i 2) n))
        (else (fast-expt b (* a b) (- i 1) n)) ))

;;; 16-fast-expt.scm

(define (fast-expt-2 b n)
    (expt-iter b n 1))

(define (expt-iter-2 b n a)
    (cond ((= n 0)
            a)
          ((even? n)
            (expt-iter-2 (square b) ; 这里为什么要把b翻倍而不是a？
                       (/ n 2) 
                       a))
          ((odd? n)
            (expt-iter-2 b
                       (- n 1)
                       (* b a)))))

(define (fast-expt-1 b i)
    (cond ((= i 0) 1)
        ((even? i) (square (fast-expt-1 b (/ i 2))))
        (else (* b (fast-expt-1 b (- i 1))))))

(define (even? n)
    (= (remainder n 2) 0))

; 取余数
(define (remainder n x)
    (if (< n x)
        n
        (remainder (- n x) x)))

(define (square x)
    (* x x))

(define (expt b n)
    (fast-expt b b n n))

(define (expt-1 b n)
    (fast-expt-1 b n))

(trace expt)

(trace fast-expt)

(trace fast-expt-1)

(display (expt 2 20))

(display (expt-1 2 20))