all: go scheme haskell

go: src/fib_tail.go
	go build -o fib_tail_go src/fib_tail.go
	go build -o fib_loop_go src/fib_loop.go

scheme: src/fib_tail.scm
	chicken-csc src/fib_tail.scm -o fib_tail_scm

haskell: src/fib_tail.hs
	ghc -O -fllvm src/fib_tail.hs -o fib_tail_hs
	rm -r src/{fib_tail.hi,fib_tail.o}

zig: src/fib_tail.zig
	zig build-exe --strip --release-fast --name fib_tail_zig src/fib_tail.zig

clean:
	rm -f fib_tail_scm fib_tail_go fib_loop_go fib_tail_hs fib_tail_zig
