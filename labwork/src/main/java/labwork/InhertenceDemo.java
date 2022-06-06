package labwork;

 class Dog{
	void sound () {
	
	}
}

class Rajapalaiyam extends Dog {
	void speed () {
		System.out.println("whoo whooo");
	}
}
class lab extends Dog{
	void type () {
		System.out.println("hihihihihi");
	}
}

public class InhertenceDemo {

	public static void main(String[] args) {
		Rajapalaiyam D = new Rajapalaiyam ();
		D.speed();
        
	}

}