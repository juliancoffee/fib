const fib = (n) => {
	if (n <= 2) return 1;
	return fib(n - 1) + fib(n - 2);
}
console.log(`res = ${fib(parseInt(process.argv[2]))}`)
