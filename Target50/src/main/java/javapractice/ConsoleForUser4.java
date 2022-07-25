package javapractice;
import java.util.concurrent.ExecutionException;
public class ConsoleForUser4  {

	public static void main(String[] args)throws ExecutionException {
		String name = System.console().readLine();
		
		System.out.println("Entered name " + name);

	}

}
