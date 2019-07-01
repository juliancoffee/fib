#!/usr/bin/env sh

printf "\nOur the best\n"
printf "\n C $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibc $1 2>&1 
printf "\n Rust $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibrs $1 2>&1

printf "\n V $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibv $1 2>&1

printf "\n Nim $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibnim $1 2>&1

printf "\n Zig $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibzig $1 2>&1


printf "\nПесос гошка медленная\n"
printf "\n Julia $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" julia src/fib.jl $1 2>&1

printf "\n Java $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" java fib $1 2>&1

printf "\n Ocaml $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibml $1 2>&1

printf "\n Pascal $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibpas $1 2>&1

printf "\n Haskell $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibhs $1 2>&1

printf "\n Go $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" ./fibgo $1 2>&1


printf "\nYou can\n"
printf "\n JS $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" node src/fib.js $1 2>&1

printf "\n Clojure $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" echo "$1" | clojure src/fib.clj

printf "\n Python (pypy) $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" pypy3 src/fib.py $1 2>&1


printf "\nGood luck\n"
printf "\n Erlang $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" echo "$1." | erl -noshell -s fib main -s init stop
printf "\n Scheme $1\n"
/usr/bin/time -f"Time = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" echo "$1" | ./fibscm
