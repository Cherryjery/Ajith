package anoundtech;
import java.util.Scanner;
public class Main {

	public static void main(String[] args) {



 


   System.out.println("Find the factorial of: ");

   // creating a scanner object

   Scanner scn = new Scanner(System.in);

   int number = scn.nextInt(); // taking the input with scanner

 

   int k, fact = 1; // first factorial value

 

   for (k = 1; k <= 6; k++) {

     fact = fact * k;

   }

   System.out.println("Factorial of " + number + " is: " + fact);

   

 }



	}


