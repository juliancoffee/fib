#!/usr/bin/env bash

echo "$1" > lisp
echo "$1." > erlang

printf "\n Go tail $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fib_tail_go $1
printf "\n Go loop $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fib_loop_go $1
printf "\n Scheme tail $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fib_tail_scm < lisp
printf "\n Clojure tail $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" clojure src/fib_tail.clj < lisp
printf "\n Haskell tail $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fib_tail_hs $1
printf "\n Erlang tail $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" erl -noshell -s fib_tail main -s init stop < erlang
printf "\n Python loop $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" python3 src/fib_loop.py $1
printf "\n Python3 (pypy) loop $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" pypy3 src/fib_loop.py $1
printf "\n Julia loop $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" julia src/fib_loop.jl $1

rm lisp
rm erlang

#printf "\n Zig tail $1\n"
#/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fib_tail_zig $1
