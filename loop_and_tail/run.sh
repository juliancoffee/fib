#!/usr/bin/env bash

#printf "\n Go tail $1\n"
#time ./fib_tail_go $1
printf "\n Go loop $1\n"
time ./fib_loop_go $1
#printf "\n Sheme tail $1\n"
#time echo "$1" | ./fib_tail_scm
#printf "\n Clojure tail $1\n"
#time echo "$1" | clojure src/fib_tail.clj
printf "\n Haskell tail $1\n"
time ./fib_tail_hs $1
#printf "\n Python tail $1\n"
#time python3 src/fib_tail.py $1
#printf "\n Python3 (pypy) tail $1\n"
#time pypy3 src/fib_tail.py $1
