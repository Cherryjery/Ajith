package labwork;

public class SuperKeyword {

	public static void main(String[] args) {
		Actor act = new Actor ();
		act.met();
		
	}}
abstract class LittleStar{
	public void met() {
		System.out.println("Simbu ");
		
	}
}
abstract class SuperStar extends LittleStar {
	public void met () {
		super. met();
		System.out.println("Superstar have charctersitc of Little star");
	}
}
abstract class MegaStar extends SuperStar {
	final public void met() {
	      super. met();
	System.out.println("Megastar have charctersitc of Little star ");
	}
}
class Actor extends MegaStar {
	
}