#!/usr/bin/env bash

printf "\n C $1\n"
time ./fibc $1
printf "\n Go $1\n"
time ./fibgo $1
printf "\n Rust $1\n"
time ./fibrs $1
printf "\n Python (pypy) $1\n"
time pypy3 fib.py $1
printf "\n Julia $1\n"
time julia fib.jl $1
printf "\n JS $1\n"
time node ./fib.js $1
printf "\n Java $1\n"
time java fib $1
