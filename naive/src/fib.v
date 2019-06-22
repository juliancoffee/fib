import os

fn fib(n i64) i64 {
    if n < i64(3) {
        return i64(1)
    }
    return fib(n - i64(1)) + fib(n - i64(2))
}

fn main() {
    num := os.args[1]
    i_n := num.to_i()
    n := i64(i_n)
    res := fib(n)
    println(res)
}
