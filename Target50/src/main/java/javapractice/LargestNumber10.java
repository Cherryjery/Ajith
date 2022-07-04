package javapractice;

public class LargestNumber10 {
	
	//ternary operator
	//

	public static void main(String[] args) {
		int  a =  32;
		int b = 25;
		int c = 65;
		
		int result = (a>b)? (a>c?a:c):(b<c?b :c) ;
		System.out.println(result);
		 

	}

}
