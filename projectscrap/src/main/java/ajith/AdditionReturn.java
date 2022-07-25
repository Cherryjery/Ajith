package ajith;

public class AdditionReturn {
	public static void main(String[] args) {
		
		Adding added = new Adding();
		System.out.println(added.ads());
		
		
		}

}
 class   Adding {
	
	 int a  ;
	 int b ;
	
	   public 	int   ads () {
		    a = 10;
		    b = 23;
			 int result = a + b ;

			
		    return result ;
	   
	   }
	   }