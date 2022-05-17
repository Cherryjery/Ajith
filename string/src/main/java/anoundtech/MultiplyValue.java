package anoundtech;
import java.io.File;
import java.util.*;
import java.util.Scanner;
 import org.apache.log4j.Logger;
 import org.apache.log4j.PropertyConfigurator;

 
public class MultiplyValue {
	static Logger logger = Logger.getLogger(MultiplyValue.class);

	public static void main(String[] args) {
	
		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);

		Scanner Num = new Scanner (System.in);
		logger.info("enter the number of a : ");
		int a = Num.nextInt();
		logger.info("enter the number of b : ");
		int b = Num.nextInt();
		logger.info(a*b);
		logger.info(a+b);
		logger.info(a-b);
		logger.info(a/b);
		logger.info(a%b);
		if (a<b) {
			logger.info("a is lesser then b");
			if (a>b) {
				logger.info("a is greater than b");
			  
					
				}else {
					logger.info("What we need to do");
					
				}
			}
		}
		
	}


