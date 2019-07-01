let rec fib n =
    match n with
    | n when n < 3 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
;;

let num = Sys.argv.(1)
let n = int_of_string num
let res = fib n
let () = Printf.printf "res = %d" res
