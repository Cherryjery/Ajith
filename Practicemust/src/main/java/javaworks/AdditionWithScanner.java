package javaworks;
import java.util.Scanner;

public class AdditionWithScanner {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
       System.out.println("enter  a");
		int a = input.nextInt();
		System.out.println("enter b");
		int b = input.nextInt();
		System.out.println("enter b");
		int result = a +b ;
		System.out.println(result);	
	}

}
