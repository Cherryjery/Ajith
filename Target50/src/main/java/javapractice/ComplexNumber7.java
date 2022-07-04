package javapractice;

public class ComplexNumber7 {
	int real,image;
	
	public ComplexNumber7(int r,int i) {
		
		this.real = r;
		this.image = i;
	
	}

	public void  showc() {
		System.out.println(this.real + " +i" + this.image);
	}
	public static ComplexNumber7 add (ComplexNumber7 n1,ComplexNumber7 n2) {
		ComplexNumber7 res = new ComplexNumber7 (0,0);
		
		res.real =  n1.real + n2.real;
		res.image = n1.image + n2.image;
		return res;
		
	}
	
	public static void main(String[] args) {
		ComplexNumber7 c1 = new ComplexNumber7 (5,6);
		ComplexNumber7 c2 = new ComplexNumber7(2,6);
		System.out.println("first c number  : " );c1.showc();
		System.out.println("second c number  : " );c2.showc();
		
		ComplexNumber7 res = add (c1,c2);
		res.showc();
		
		

	}

}
