(defn fib [n]
  (if (< n 3) 
    1
    (+
      (fib (- n 1))
      (fib (- n 2)))))

(println
         (fib (read-string (first *command-line-args*))))
