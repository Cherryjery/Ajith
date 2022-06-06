package labwork;

public class InterAnonymous {
     public static void main(String[] args) {
		Person ajith = new Person() {
             void method() {
				System.out.println("Human are person");
				
			}
			
		};
		ajith.method();

	}

}

abstract class Person {
	abstract void method ();
}
