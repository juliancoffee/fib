if [ -f "fib.beam" ]
then
echo "$1." | erl -noshell -s fib main -s init stop
fi
