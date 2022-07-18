if [ -f "fib.beam" ]
then
echo "$1." | time -p erl -noshell -s fib main -s init stop
fi
