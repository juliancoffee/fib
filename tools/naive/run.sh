#!/usr/bin/env bash

function timer {
    /usr/bin/time -f"\nTime = %e\nUser = %U\nSystem = %S\nSize = %M (kb)" $@
}

function start_as {
    echo $1 > input.txt
    echo "$1." > bin/input_erl.txt

    echo "#!/usr/bin/env -S emacs -Q --script" >bin/fib.el
    cat src/fib.el >>bin/fib.el
    echo "(setq n $1)" >>bin/fib.el
    echo "(print (fib n))" >>bin/fib.el
    chmod +x bin/fib.el
}

function end {
    rm input.txt
    rm bin/input_erl.txt
}


function best {
    printf "\nOur the best\n"

    printf "\n C $1\n"
    timer bin/fibc $1
    printf "\n Rust $1\n"
    timer bin/fibrs $1
    printf "\n Nim $1\n"
    timer bin/fibnim $1
    printf "\n Zig $1\n"
    timer bin/fibzig $1
}

function fast {
    printf "\nПесос гошка медленная\n"

    printf "\n Julia $1\n"
    timer bin/fib.jl $1
    printf "\n Ada $1\n"
    timer bin/fibada $1
    printf "\n Java $1\n"
    cd bin
    timer java fib $1
    cd ..
    printf "\n Ocaml $1\n"
    timer bin/fibml $1
    printf "\n Pascal $1\n"
    timer bin/fibpas $1
    printf "\n Haskell $1\n"
    timer bin/fibhs $1
    printf "\n LuaJit $1\n"
    timer bin/fib.lua < input.txt
    printf "\n Go $1\n"
    timer bin/fibgo $1
}

function medium {
    printf "\nYou can\n"

    printf "\n JS $1\n"
    timer bin/fib.js $1
    printf "\n Clojure $1\n"
    timer bin/fib.clj < input.txt
    printf "\n Python (pypy) $1\n"
    timer pypy3 src/fib.py $1
}


function slow {
    printf "\nGood luck\n"

    printf "\n Erlang $1\n"
    cd bin
    timer erl -noshell -s fib main -s init stop < input_erl.txt
    cd ..
    printf "\n Scheme $1\n"
    timer bin/fibscm < input.txt
}

function veryslow {
    printf "\n Awk $1\n"
    timer bin/fib.awk < input.txt
    printf "\n Perl $1\n"
    timer bin/fib.pl $1
    printf "\n Python $1\n"
    timer bin/fib.py $1
    printf "\n ELisp $1\n"
    timer bin/fib.el
    printf "\n VimL $1\n"
    timer bin/fib.vim < input.txt
}

#===
start_as $1
#===

best $1
#fast $1
#medium $1
#slow $1
#veryslow $1

#===
end 
#==
