package labwork;
import java.util.ArrayList; 
import java.util.Collections; 
import java.util.List; 

class Cricket{
	int id;
	String name;
	float price;
	
	

	public Cricket(int id, String name, float price) {
		// TODO Auto-generated constructor stub
	
		    
		this.id = id;
		this.name = name;
		this.price = price;
	}
}

public class LambdaDemo {

	public static void main(String[] args) {
	List<Cricket>list = new ArrayList<Cricket>();
	
	
	
	list.add(new Cricket(2,"stumper ball", 1000f));
	list.add(new Cricket(1,"bat", 100f));
	list.add(new Cricket(3,"stump", 1300f));
	list.add(new Cricket(4,"gloves", 1600f));
	
	   System.out.println("Sorting on the basis of name...");  
	Collections.sort(list,(c2,c4)->{
		return c2.name.compareTo(c4.name);  
	});
	
	for(Cricket C :list){  
        System.out.println(C.id +" "+C.name +" "+C.price);  
	
	}

}}

