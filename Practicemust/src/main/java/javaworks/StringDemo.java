package javaworks;

public class StringDemo {

	public static void main(String[] args) {
		
	String str = "hello World";  // this will create single in object in stack
	
	String str1 = new String(); // this will create two object in heap
	
	// its all work on index //
	
      char c = str.charAt(2); // char is data variables stored in c and using .charAt method in str object getting specific char
      
        System.out.println(c);
        
        String substr = str.substring(3);//substring is used to print except things , when we pass arugment it works.
        
        System.out.println(substr);
        
        String substr2 = str.substring(3,7);
        System.out.println(substr2);
        
	}

}
