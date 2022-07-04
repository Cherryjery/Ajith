package javapractice;
import java.util.Scanner;

public class LeapYear12 {

	public static void main(String[] args) {
  int year;
  Scanner scan = new Scanner(System.in);year = scan.nextInt();
  if ((year %400 == 0) || ((year % 4 == 0) && (year % 100 != 0))) {
	  
	  System.out.println(year + " : leap year");
	  
  }else {
	  
	  System.out.println("not leap year");
  }
  
  
  
  
  
	}

}
