package anoundtech;
import java.io.File;
import java.util.Scanner;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class SwapTwoNumber {
static Logger logger = Logger.getLogger(SwapTwoNumber.class);
	public static void main(String[] args) {

		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);	

		Scanner keyenter = new Scanner(System.in);
		
		logger.info  ("Enter the First number");
		  Float First=keyenter.nextFloat();
		  
	     logger.info  ("Enter the Second number");
		  Float Second=keyenter.nextFloat();
		  logger.info("Before Swap");
		  logger.info("first number :" + First);
		  logger.info("second number :" + Second);
		  
		  float temporary = First;
		  First = Second;
		  
		Second = temporary;
		 logger.info("After Swap");
		  logger.info("first number :" + First);
		  logger.info("second number :" + Second);
		  
		
	}

}
