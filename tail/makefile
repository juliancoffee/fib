all: go scheme

go:
	go build -o fib_tail_go src/fib_tail.go

scheme:
	chicken-csc src/fib_tail.scm -o fib_tail_scm

clean:
	rm -f fib_tail_scm fib_tail_go
