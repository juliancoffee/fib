#!/usr/bin/env bash

printf "\n Julia matrix exponentiation of $1\n"
time julia src/fib_matrix.jl $1
printf "\n Python3 (numpy) matrix exponentiation of $1\n"
time python src/np_fib_matrix.py $1
printf "\n Python3 (pypy) matrix exponentiation of $1\n"
time pypy3 src/true_fib_matrix.py $1
