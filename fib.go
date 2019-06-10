package main

import "fmt"
import "strconv"
import "os"

func fib(n int) int {
    if (n == 1) {
        return 1
    }
    if (n == 2) {
        return 1
    }

    return fib(n-1) + fib(n-2)
}

func main() {
    getnum := os.Args[1]
    n, err := strconv.Atoi(getnum)
    fmt.Println("res = ", fib(n))

    if (err != nil) {
        fmt.Println(err)
    }
}
