function fib(n)
    M = [BigInt(1) BigInt(1); BigInt(1) BigInt(0)]
    R = M^(n-1)
    return R[1]
end

n = parse(Int64, ARGS[1])
println("res = ", fib(n))
