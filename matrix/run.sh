#!/usr/bin/env bash

printf "\n Julia matrix exponentiation of $1\n"
time julia src/fib_matrix.jl $1
printf "\n Python3 matrix exponentiation of $1\n"
time python3 src/fib_matrix.py $1
