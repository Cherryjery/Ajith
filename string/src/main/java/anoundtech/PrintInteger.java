package anoundtech;
import java.io.File;
import java.util .Scanner;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class PrintInteger {
	static Logger logger = Logger.getLogger(PrintInteger.class);
	public static void main(String[] args) {
		
		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);
		
       Scanner reader = new Scanner(System.in);
       logger.info("enter your name : " );
       
       String name = reader.nextLine();
       logger.info("Welcome : " + name );
       logger.info("Please enter any number ");
      String anynumber = reader.nextLine(); 
       logger.info("enter your age");
       int age = reader.nextInt();
       logger.info("thank you");
	}

}
