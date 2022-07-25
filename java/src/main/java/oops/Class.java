package oops;
class Addition {
	int i;
	int j;
	int result ;
	
	public void num() {
		result = i+j;
	}
}

public class Class {

	public static void main(String[] args) {
		Addition obj = new Addition();
		obj.i = 2;
		obj.j = 4;
		obj.num();
		
System.out.println(obj.result);
        
	}

}
