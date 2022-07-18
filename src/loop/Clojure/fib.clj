(defn fib 
  ([n] 
   (fib n (bigint 0) (bigint 1)))
  ([n prev curr]
   (if (< n 3)
     (+ prev curr)
     (recur (- n 1) curr (+ prev curr)))))

(let [
      cmd-arg (first *command-line-args*)
      number (read-string cmd-arg)
      result (str "res = " (fib number))
      ]
  (println result)) 
