function fib(n)
    if n == 1
        return 1
    end

    if n == 2
        return 1
    end

    return fib(n-1) + fib(n-2)
end

n = parse(Int64, ARGS[1])
println("res = ", fib(n))

