package classesAndMethod;

import java.util.Scanner;

public class MethodOverLoadDemo3 { 
public static void main(String[] args)throws Exception { 
 //Hall rani=new Hall();
 //rani.party("marriage");
 GoodHall ghall=new GoodHall(); 
 //Marriage marriage=new Marriage();
 Scanner scan=new Scanner(System.in); 
 System.out.println("Please enter the party class name..:"); 
 String className=scan.next(); 
 Party party=(Party)Class.forName(className).newInstance(); 
 ghall.party((BirthDay)party); 
 } 
} 
class Hall{ 
public void party(String purpose) { 
 if(purpose.equals("birthday")) { 
 System.out.println("brithday party arrangements made..."); 
 } 
 else if(purpose.equals("marriage")) { 
 System.out.println("marriage party arrangements made...."); 
 } 
 } 
} 
class GoodHall{ 
public void party(BirthDay party) { 
 System.out.println("birth day party arragements made..."); 
 party.execute(); 
 } 
public void party(Marriage party) { 
 System.out.println("marriage party arrangements made..."); 
 party.execute(); 
 } 
} 
abstract class Party{ 
public abstract void execute(); 
} 
class BirthDay extends Party{ 
public void execute() { 
 System.out.println("happy birthday to you......................."); 
 } 
} 
class Marriage extends Party{ 
public void execute() { 
 System.out.println("sir sir piece podunga sir............."); 
 } 
}