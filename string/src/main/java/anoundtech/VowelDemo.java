package anoundtech;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import java.io.File;

import java.util.Scanner;


public class VowelDemo {
	static Logger logger=Logger.getLogger(VowelDemo.class);
     	
	public static void main(String[] args) {
	
		String log4jConfigFile = System.getProperty("user.dir")+ File.separator + "log4j.Properties";
		PropertyConfigurator.configure(log4jConfigFile);

		Scanner keyin = new Scanner (System.in);
	      
		
	     logger.info("Enter the letter :"  );
	     char ch=keyin.next().charAt(0);
	 
	     
	     if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' ) {
	     logger.info("this is a vowel");
	     }else {
	    	 logger.info("this is not a vowel");
	     }
	     }
	 			
	     } 

