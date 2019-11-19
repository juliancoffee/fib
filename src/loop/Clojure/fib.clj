(defn fib [n] 
  (defn fib_tail [n _second _first]
    (if (< n 3)
      (+ _second _first)
      (recur (- n 1) _first (+ _second _first))))
  (fib_tail n (bigint 0) (bigint 1)))

(println "res = "
         (fib (read-string (first (*command-line-args*)))))
