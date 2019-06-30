const std = @import("std");
const allocator = std.debug.global_allocator;

pub fn main() !void {
    const args = try std.process.argsAlloc(allocator);
    const number = try std.fmt.parseInt(i64, args[1], 10);

    std.debug.warn("{}\n", fib(number));
}

fn fib(n: i64) i64 {
    if (n < 3) {
        return 1;
    }
    return fib(n-1) + fib(n-2);
}
