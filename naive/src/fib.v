import os

fn fib(n int) int {
    if n < 3 {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

fn main() {
    num := os.args[1]
    n := num.to_i()
    res := fib(n)
    println(res)
}
