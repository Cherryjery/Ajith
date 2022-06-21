package collectionlab2;

//Java code to illustrate the use of iterator

import java.util.*;

class IteratorDemo2 {
	public static void main(String[] args)
	{
		ArrayList<String> list = new ArrayList<String>();

		list.add("A");
		list.add("B");
		list.add("C");
		list.add("D");
		list.add("E");
System.out.println(list);
		// Iterator to traverse the list
		Iterator<String> iterator = list.iterator();

		System.out.println("List elements : ");

		while (iterator.hasNext())
			System.out.print(iterator.next() + " ");

		System.out.println();
	}
}
