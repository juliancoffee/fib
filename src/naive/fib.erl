-module(fib).
-export([main/0]).

fib(N) when N < 3 -> 1;
fib(N) when N > 2 -> fib(N-1) + fib(N-2).

main() ->
    {ok, Arg} = io:read(""),
    io:format("res: ~p\n", [fib(Arg)]).

