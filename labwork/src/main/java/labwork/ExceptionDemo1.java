package labwork;

public class ExceptionDemo1 {

	
		public static void main(String[] args) {
			System.out.println("before exception....");
			try {
				int i=1/0;
			}catch(ArithmeticException e) {
				System.out.println(e);
				new Handler().handle(e);
			}
			System.out.println("After exception....");
		}
	}
	class Handler{
		public void handle(ArithmeticException ae) {
			System.out.println("please dont divide the number by zero..");
		}
	}