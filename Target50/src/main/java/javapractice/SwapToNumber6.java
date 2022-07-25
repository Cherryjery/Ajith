package javapractice;

public class SwapToNumber6 {
	//in  we can create many method
	static void swapnumbers (int m,int n) {
		
		int temp = m;
		m = n;
		 n = temp;
		System.out.println("vaule of m : " +  m  +   " value of n : " + n);
		
	}

	public static void main(String[] args) {
		int m = 9;
		int n = 5;
		swapnumbers(m,n);

	}

}
