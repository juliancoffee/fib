const std = @import("std");
const allocator = std.debug.global_allocator;

pub fn main() !void {
    const args = try std.process.argsAlloc(allocator);
    const number = try std.fmt.parseInt(i128, args[1], 10);

    std.debug.warn("{}\n", fib(number));
}

fn fibtail(n: i128, current: i128, next: i128) i128 {
    if (n == 0) {
        return current;
    }

    return fibtail(n-1, next, current+next);
}

fn fib(n: i128) i128 {
    return fibtail(n, 0, 1);
}