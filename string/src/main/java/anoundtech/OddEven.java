package anoundtech;
import java.io.File;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import java.util.Scanner;
public class OddEven {
static Logger logger = Logger.getLogger(OddEven.class);
	public static void main(String[] args) {
		

		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);
		
		Scanner Enter = new Scanner (System.in);
		
		logger.info("Enter the number");
		int num = Enter.nextInt();
		if (num % 2 ==0)
		
			logger.info("Entered number is even :  " + num);
		
		else 
			logger.info("Entered number is Odd : " + num);
	}
}
		
			
		
		
		
		
			
		
		

		
	

