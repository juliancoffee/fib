#!/usr/bin/env bash

printf "\n C $1\n"
time ./fibc $1
printf "\n Go $1\n"
time ./fibgo $1
printf "\n Rust $1\n"
time ./fibrs $1
printf "\n Python (pypy) $1\n"
time pypy3 src/fib.py $1
printf "\n Julia $1\n"
time julia src/fib.jl $1
printf "\n JS $1\n"
time node src/fib.js $1
printf "\n Java $1\n"
time java fib $1
printf "\n Nim $1\n"
time ./fibnim $1
#printf "\n Scheme $1\n"           #sorry it's too slow
#time echo "$1" | ./fibscm
printf "\n Clojure $1\n"
time echo "$1" | clojure src/fib.clj
printf "\n Pascal $1\n"
time ./fibpas $1
printf "\n Haskell $1\n"
time ./fibhs $1
