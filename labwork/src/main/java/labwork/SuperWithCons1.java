package labwork;

public class SuperWithCons1 {

	public static void main(String[] args) {
		Orange O = new Orange ("Welcome Fruits family");
          
	}

}
abstract class Fruits {
	public  Fruits () {
		System.out.println("Fruits are tasty");
	}
}
abstract class Apple extends Fruits{
	public Apple (int i) {
		System.out.println("how many apple is there: "+ i);
	}
}
class Orange extends Apple {
	public Orange (String s) {
		super(200);
		System.out.println(" Orange is orange ");
	}
}