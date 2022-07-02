package classobject;

interface Shoemanufacturing {
  public  void  production ();
}

class ShoeFactory  implements Shoemanufacturing {
	public void production () {
		System.out.println("shoe are making");
	}
}
class ShoeShop  implements Shoemanufacturing {
	
	public void production () {
		System.out.println("ready for selling ");
	}
}
class Customer   {
	public void production () {
		System.out.println("Shoe has bought ");

	}
}
class Shoe   {
	public void production () {
		System.out.println(" shoe ");

	}
}
class Salesman implements Shoemanufacturing {
	public void production () {
		System.out.println("ready for selling ");

	}
}

public class ShoeFactoryDemo {

	public static void main(String[] args) {
		ShoeFactory newfactory = new ShoeFactory ();
		
		newfactory.production();
		
		
		

	}

}