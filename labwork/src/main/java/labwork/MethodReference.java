package labwork;
interface Car {
	void types();
}

 public class MethodReference {
	static void  vechiles () {
		System.out.println("love cars ");
	}

	public static void main(String[] args) {
		
		Car swift = MethodReference:: vechiles ;
			swift.types();
		}
			
		}

	


