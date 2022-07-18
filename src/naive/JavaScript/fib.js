const fib = n => {
	if (n < 3) {
        return 1;
    } else {
        return fib(n - 1) + fib(n - 2);
    }
}

const main = () => {
    const num = parseInt(process.argv[2])
    const result = fib(num);
    console.log(`${result}`);
}

main()
