package classobject;


	// Using Java Generics converts run time exceptions into
	// compile time exception.
	import java.util.*;

	public class GenericArrayWhy 
	{
		public static void main(String[] args)
		{
			// Creating a an ArrayList with String specified
			ArrayList <String> al = new ArrayList<String> ();

			al.add("Sachin");
			al.add("Rahul");

			// Now Compiler doesn't allow this
			//al.add(10);

			  String s1 = al.get(0);
		        String s2 = al.get(1);
		        
		        
//			String s1 = (String)al.get(0);
//			String s2 = (String)al.get(1);
//			String s3 = (String)al.get(2);
		}
	}
