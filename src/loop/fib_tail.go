package main

import (
	"fmt"
	"math/big"
	"os"
)

func fibtail(n, current, next *big.Int) *big.Int {
	if n.Cmp(big.NewInt(0)) == 0 {
		return current
	}

	return fibtail(n.Sub(n, big.NewInt(1)), next, current.Add(current, next))
}

func fib(n *big.Int) *big.Int {
	return fibtail(n, big.NewInt(0), big.NewInt(1))
}

func main() {
	n := new(big.Int)
	n, ok := n.SetString(os.Args[1], 10)
	if !ok {
		fmt.Println("failed to parse param")
		os.Exit(1)
	}
	fmt.Println("res = ", fib(n))
}
