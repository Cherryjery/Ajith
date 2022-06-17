package oops;

class Multiple {
	int i ;
	int j;
	int  result ;
	
	public void multi () {
      result = i * j ;
	}
}



public class ClassIntegerDemo {

	public static void main(String[] args) {
		Multiple vaule = new Multiple ();
		vaule.i = 25 ;
		vaule .j = 3 ;
	
		vaule.multi();
		System.out.println(vaule.result);
	}

}

