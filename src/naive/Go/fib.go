package main

import "fmt"
import "strconv"
import "os"

func fib(n int) int {
	if n < 3 {
		return 1
	}
	return fib(n-1) + fib(n-2)
}

func main() {
	getnum := os.Args[1]
	n, err := strconv.Atoi(getnum)
	fmt.Println(fib(n))

	if err != nil {
		fmt.Println(err)
	}
}
