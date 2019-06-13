public class fib {

    public static void main(String[] args) {
        
        String number = args[0];
        int n = Integer.parseInt(number);
        int result = fib.done(n);

        System.out.printf("res = %d", result);
    }

    public static int done(int n) {
        if (n < 3) {
            return 1;
        }
        return done(n - 1) + done(n - 2);
    }
}

