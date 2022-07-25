package javapractice;

public class EvenOrOddUsingOR9 {

	public static void main(String[] args) {
	int n = 220;
		// |  is denoted as OR
	//need to know binary format  if its odd its value remains same ;
	//and its even its get greater than current value
	// eg 11 binary no = 1011
	//                 1 0001
    //                   1011 ---------- 11	                   
	
		if ((n |1 )>n) {
			System.out.println("even");
			
		}else {
			System.out.println("odd");
		}
	}

}
