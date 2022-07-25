package classesAndMethod;


public class Methodoverloading2 {

	public static void main(String[] args) {
		Ajith aji = new Ajith();
		Adi d = new Adi ();
		aji.sing(d);
	}

}
class Ajith{
	
	public void sing(Adi a) {
		a.poda();
		System.out.println("i am tight ............" + a);
	}
}
class Adi {
	public void poda() {
		System.out.println("i am loose");
		
	}
}