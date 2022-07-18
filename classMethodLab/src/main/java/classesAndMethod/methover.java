package classesAndMethod;

import java.util.Scanner;

public class methover {

	public static void main(String[] args) throws Exception {
		
		Gooodhall ghall=new Gooodhall(); 

		Scanner scan=new Scanner(System.in); 
		 System.out.println("Please enter the party class name..:");
		 String className  = scan.next();
		 
		Paarty paarty = (Paarty)Class.forName(className).newInstance();
		ghall.paarty((Marriagee)paarty); 
	}

}
abstract class Paarty {
	public abstract void executive ();
}

class Gooodhall{
	public void paarty (Marriagee paarty) {
		System.out.println("birth day party arragements made..."); 
		paarty.executive(); 
	}
	public void paarty (Birthdaay paarty) {
		System.out.println("marriage party arrangements made...");
		paarty.executive(); 
	}
}
class Marriagee extends Paarty{
	
	@Override
	public void executive() {
		System.out.println("happy birthday to you.......................");		
	}
}

class Birthdaay extends Paarty{
	
	 @Override
	public void executive() {
		 System.out.println("happy birthday to 	 you.......................");
		
	}
}