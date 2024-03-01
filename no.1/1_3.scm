(define (xxx a b c)
    (cond ((and (> a b) (> b c)) (+ a b))
        ((and (> b a) (> a c)) (+ b a))
        (else (+ c a))))

(display (xxx 1 2 3))
(display (xxx 5 10 1))
(display (xxx 10 1 11))
