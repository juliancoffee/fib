(import (chicken io)
        (chicken string))

(: fib (number -> number))
(define (fib n)
  (if (< n 3)
      1
      (+ 
        (fib (- n 1)) 
        (fib (- n 2)))))

(write-line 
  (number->string
    (fib (string->number (car (string-split (read-line)))))))
