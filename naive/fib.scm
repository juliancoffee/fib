(import (chicken io)
        (chicken string))

(define (nth n ls)
  (if (or (> n (length ls)) (< n 0))
      (error "Index over of a range")
      (if (= n 0)
          (car ls)
          (nth (- n 1) (cdr ls)))))

(define (fib n)
  (if (or (= n 1) (= n 2))
      1
      (+ 
        (fib (- n 1)) 
        (fib (- n 2)))))
(write 
  (fib (string->number (nth 0 (string-split (read-line))))))
