#!/usr/bin/env bash

printf "\n Sheme tail $1\n"
time echo "$1" | ./fib_tail_scm
printf "\n Python tail $1\n"
time python3 src/fib_tail.py $1
printf "\n Python3 (pypy) tail $1\n"
time pypy3 src/fib_tail.py $1
