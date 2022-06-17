package oops;



public class MethodDemo {
	static int boxVol(int length,int breath,int height) {
		int vol;
		vol = length*breath*height;
		
		return vol;
	}
	public static void main(String[] args) {
		
		System.out.println(boxVol(10,5,3));
		System.out.println(boxVol(12,5,32));
	}

}
