package anoundtech;
import java.util.Scanner;
public class Fibonacci {

	public static void main(String[] args) {
		
		System.out.println("How many Fibonacci terms do you want ");

		    // creating a scanner object

		    Scanner scn = new Scanner(System.in);

		    int counter = scn.nextInt(); // taking the input with scanner

		 

		    int a = 0;

		    int b = 1;

		    int c, k;

		    System.out.print(a + " " +b ); // fib value for 0 and 1

		 

		    for (k = 2; k <  counter; ++k) // looping starts from 2

		    {

		      c = a + b;

		      System.out.print(" " + c);

		      a = b;

		      b = c;

		    }

//		    scn.close();

		  }

		

	}


