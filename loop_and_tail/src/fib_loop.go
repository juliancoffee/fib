package main

import (
	"fmt"
	"math/big"
	"strconv"
	"os"
)

func fib(n int) *big.Int {
	n1 := big.NewInt(1)
	n2 := big.NewInt(1)
	for i := 0; i < n - 2; i = i + 1 {
		n1, n2 = n2, n1.Add(n1, n2)
	}
	return n2
}

func main() {
	getnum := os.Args[1]
	n, err := strconv.Atoi(getnum)

	if err != nil {
		fmt.Println("failed to parse param")
		os.Exit(1)
	}

	fmt.Println("res = ", fib(n))
}
