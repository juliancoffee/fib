function fib(n)
    n1 = BigInt(1)
    n2 = BigInt(1)
    for i in 1:(n-2)
        n1, n2 = n2, n1 + n2
    end
    n2
end

n = parse(Int64, ARGS[1])
println("res = ", fib(n))
