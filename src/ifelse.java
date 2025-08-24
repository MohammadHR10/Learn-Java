public class ifelse {
    public static void main(String[] args) {
        int num = 30;
        if (num % 15 == 2) {
            System.out.println(num + " is an odd number");
        } else if (num % 2 == 0) {
            System.out.println(num + " is an even number");
        } else {
            System.out.println(num + " is neither even nor odd");
        }
    }
}
