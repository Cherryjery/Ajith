package labwork;

public class MethodOverloading {

	public static void main(String[] args) {
		Bike engine = new Bike ();
		engine.superbike(new Ducati());
		engine.superbike(new Ninja());
		engine.superbike(new Benelli());
	}

}
 class Bike{
	 public void superbike( Ducati i) {
		 System.out.println("I love ducati bike ");
	 }
		 
		 public void superbike(Ninja n) {
			 System.out.println("I love Ninja bike ");
		 }
		 
	 public void superbike (Benelli b) {
		System.out.println("I love Benelli bike ");
	 }
	 }
 
 class Ducati{}
 class Ninja{}
 class Benelli{}