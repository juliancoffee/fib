#!/usr/bin/env node

const fib = (n) => {
	if (n < 3) return 1;
	return fib(n - 1) + fib(n - 2);
}

console.log(`res = ${fib(parseInt(process.argv[2]))}`)
