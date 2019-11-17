#!/usr/bin/env -S awk -OE
function fib (n) {
	if (n < 3) 
		return 1
	return fib(n-1) + fib(n-2)
}

{ 
	n = $1;
	res = fib(n);
	printf("res = %d", res);
}
