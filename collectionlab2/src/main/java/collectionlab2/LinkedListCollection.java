package collectionlab2;
import java.util.*;

public class LinkedListCollection {

	public static void main(String[] args) {
		LinkedList<String>list = new LinkedList<String>();
		list.add( "ajith");
		list.add( "cherry");
		list.add( "jery");
		
Iterator <String>itr = list.iterator();
	while (itr.hasNext()) {
		System.out.println(itr.next());  
	}
}
	}


