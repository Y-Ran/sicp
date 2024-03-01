(define (<= x y)
    (and (< x y) (= x y)))

(define (handle line index)
    (cond ((or (<= index 0) (<= line 0)) 0)
        ((or (> index line)) 0)
        ((or (= index 1) (= index line)) 1)
        (else (+ (handle (- line 1) (- index 1)) (handle (- line 1) index)))))
; (display (handle 5 2))

(define (do_handle_line line index)
    (if (> index line)
        (display ())
        (and (display (handle line index))
         (do_handle_line line (+ index 1)))))

; (do_handle_line 1 1)

(define (handle_line line n)
    (if (> n line)
        ()
        (and (do_handle_line n 1) (handle_line line (+ n 1))))
    )

; (handle_line 3 1)

(define (func n)
    (handle_line n 1))

(func 5)