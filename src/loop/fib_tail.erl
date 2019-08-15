-module(fib_tail).
-export([main/0]).

fib_tail(N, Second, First) when N < 3 -> Second + First;
fib_tail(N, Second, First) -> fib_tail(N - 1, First, Second + First).

fib(N) -> fib_tail(N, 0, 1).

main() ->
    {ok, Arg} = io:read(""),
    io:format("res: ~p\n", [fib(Arg)]).
