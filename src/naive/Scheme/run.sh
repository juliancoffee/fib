if [ -f "fib" ]
then
    echo "$1" | time -p ./fib
fi
