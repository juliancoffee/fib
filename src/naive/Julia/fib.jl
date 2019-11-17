function fib(n)
    if n < 3
        return 1
    end

    return fib(n-1) + fib(n-2)
end

n = parse(Int64, ARGS[1])
println(fib(n))
