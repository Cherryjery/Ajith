package classesAndMethod;

public class ClassDemo3 {

	public static void main(String[] args) {
         //  new Schoool();
           Schoool.createSchoool();
	}

}
class Schoool{
	private Schoool() {
		
 }
public static Schoool createSchoool() {
	
	return new Schoool();
}
	
	
}