use std::env;

fn fib(n: i64) -> i64 {
    if n == 1 {
        return 1;
    }
    if n == 2 {
        return 1;
    }

    return fib(n-1) + fib(n-2);
}

fn main() {

    let args: Vec<String> = env::args().collect();

    let num = &args[1];
    let n: i64 = num.parse::<i64>().unwrap();

    let res: i64 = fib(n);

    println!("res {}", res);

}
