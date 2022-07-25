package labwork;

public class StringMethod {

	public static void main(String[] args) {
		String aji = "Welcome";
		String aji2 = "Ajthkumar";
		String aji3 = ("Welcome to Ajith class"); 
		String str = new String("Welcome to Ajith class").intern();  
		String str1 = new String("Welcome to Ajith class").intern();
		
		
		System.out.println(aji3 == str);   
		System.out.println(aji.valueOf(aji2));
		

	}

}
