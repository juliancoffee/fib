#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

int fib(int64_t n);

int main(int argc, char *argv[]) {

    int64_t n;
    n = atoi(argv[1]);

    printf("%i\n", fib(n));
    
    return 0;

}

int fib(int64_t n) {
    if (n < 3) {
        return 1;
    }

    return fib(n-1) + fib(n-2);
}
