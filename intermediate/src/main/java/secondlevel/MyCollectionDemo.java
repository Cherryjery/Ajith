package secondlevel;
import java.util.Hashtable;
import java.util.Vector;

public class MyCollectionDemo {

	public static void main(String[] args) {
int arr []= new int [] {1,2,3,4,};
Vector <Integer> v = new Vector <Integer>();
Hashtable<Integer , String > h = new Hashtable<Integer, String> ();


v.add(2);
v.add(3);
System.out.println(v);
h.put(1, "AJith");
h.put(2, "Ajithkumar");


System.out.println(arr[3]);
System.out.println(v.elementAt(0));
System.out.println(h.get(1));
	}

}
