package secondlevel;
import java.util.Comparator;
import java.util.TreeSet;


public class TreeSet1 {

	public static void main(String[] args) {
//		TreeSet<String> sir = new TreeSet<String>();
//              sir.add("a");
//              sir.add("b");
//              sir.add("c");
//              sir.add("d");
//              System.out.println(" before comparator: " + sir);

              TreeSet<String> sir1 = new TreeSet<String>(new Myclass());
              sir1.add("a");
              sir1.add("b");
              sir1.add("c");
              sir1.add("d");
              System.out.println("Descending order : " + sir1);
              

	}

}
class Myclass implements Comparator<String>{
	
	 public int compare(String Aji1, String Aji2)
	    {
//	  
       

     String   first_Str = Aji1;
     String      second_Str = Aji2;
	  
	      // System.out.println(Aji1);
	       //System.out.println(Aji2);
	        return second_Str.compareTo(first_Str);
	    }
	}





