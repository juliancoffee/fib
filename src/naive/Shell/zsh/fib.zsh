fib () {
    if [[ $1 -lt 3 ]]
    then
        echo 1
        return
    fi
    echo $(($(fib $(($1-1)))+$(fib $(($1-2)))))
}

fib $1
