package classesAndMethod;

public class AdiDoubt {
public static void main(String[] args) {
	Computer1 com= new Computer1();
	com.aji("Paithiyam");
	System.out.println(com.HDD);
	
	
}
}
class Computer1{
	public String HDD;

	public Computer1 aji(String s) {
		this.HDD=s;
		return this;
	}
	public void adi() {
		
	}
}