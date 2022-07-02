package collectionlab2;
import java.util.*;
public class ArrayCollection {

	public static void main(String[] args) {
ArrayList<String>list = new ArrayList<String>();
list.add("Ajith");
list.add("Kumar");
list.add("Chery");
list.add("jerry");


Iterator<String> itr = list.iterator();
while(itr.hasNext()) {
	System.out.println(itr.next());
}
	}

}
