package labwork;
public class StringDemo {
	public static void main(String[] args) {
			
		String str1="hello";
		String str2="hello";
		String str3 = new String("hello");
		
		System.out.println(str3==str2);
		
		System.out.println(str2.equals(str1));
		System.out.println(str3.equals(str2));	
		System.out.println(str1.compareTo(str3));
		System.out.println(str1.toUpperCase());
        System.out.printf("\n %-4s %10s %20s", "Column1","Column2","Column3");
		
		System.out.printf("\n %-4s %10s %20s", "SNo","Name","Company");
		System.out.printf("\n %-4s %-20s %20s", "100","Ajith","Anound Technologies");
		
		System.out.printf("\n %-20s %-20s %-20s", "SNo","Name","Company");
		System.out.printf("\n %-20s %-20s %-20s", "100","Ramu","Anound Technologies");
		System.out.println();
		System.out.printf("%.3f",100.23434343f);
		
		System.out.printf("\n %-25s","Ajith");
//		System.out.printf("\n %0s ,"Sno","Name", "Age","Company","Dob","Bike");
		
		
		
	}
	
}