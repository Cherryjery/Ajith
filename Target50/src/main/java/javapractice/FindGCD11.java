package javapractice;

public class FindGCD11 {
	//using Euclidean algorithm 
	
	static int GCD(int x, int y) {
		if (y ==0)
       return x;
		return GCD(y,x%y);
	}
	
	

	public static void main(String[] args) {
		
		int x = 18 , y  = 6;
		System.out.println("this GCD of " + x + "and "+ y + " is : " + GCD (x,y));
	}

}
