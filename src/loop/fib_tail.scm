(import (chicken io)
        (chicken string))

(define (nth n ls)
  (if (or (> n (length ls)) (< n 0))
      (error "Index over of a range")
      (if (= n 0)
          (car ls)
          (nth (- n 1) (cdr ls)))))

(define (fib n)
  (define (fib n second first)
      (if (< n 3)
          (+ second first)
            (fib (- n 1) first (+ second first))))
  (fib n 0 1)) 

(write 
  (fib (string->number (nth 0 (string-split (read-line))))))
