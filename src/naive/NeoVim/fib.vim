function! Fib(n)
	if a:n < 3
		return 1
	endif
	return Fib(a:n-1) + Fib(a:n-2)
endfunction

let n = readfile('/dev/stdin')[0]
let result = Fib(n)

call writefile([result], '/dev/stdout')
quit
