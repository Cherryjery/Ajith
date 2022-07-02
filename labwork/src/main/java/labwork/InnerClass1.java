package labwork;

public class InnerClass1 {

	public static void main(String[] args) {
		lkg start = new lkg ();	
		start.fan();
		ukg end = new ukg ();
		end.tablefan();

	}

}
class lkg{
	public void fan() {
   
	System.out.println("new world");
//	ukg end = new ukg ();
//	end.tablefan();
	}
}
class ukg {
	public void tablefan() {
		System.out.println("Ajith");
	}
	class lkg{
		public void fan() {
	   
		System.out.println("new world");
//		ukg end = new ukg ();
//		end.tablefan();
		}
	}
}
class first {
	
}