(import (chicken io)
        (chicken string))

(define (nth n ls)
  (if (or (> n (length ls)) (< n 0))
      (error "Index over of a range")
      (if (= n 0)
          (car ls)
          (nth (- n 1) (cdr ls)))))

(define (fib n)
  (define (fib n second first res)
      (if (= n 1)
          res
            (fib (- n 1) first res (+ first res))))
  (fib n 0 0 1)) 

(write 
  (fib (string->number (nth 0 (string-split (read-line))))))
