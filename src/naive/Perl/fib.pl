use strict;
use warnings;

sub fib {
	if ($_[0] < 3) {
		return 1
	}
	return fib($_[0] - 1) + fib($_[0] - 2)
}

my $n = $ARGV[0];
my $res = fib($n);
printf("%d\n", $res);
