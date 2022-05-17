package anoundtech;
import java.io.File;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class QuotientReminder {
	
  static Logger logger = Logger.getLogger(QuotientReminder.class);
  
	public static void main(String[] args) {

		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);
		
		int divider = 30;
		int divisor = 5;
		int Quotient = divider / divisor;
		int Reminder = divider % divisor;
		
		
logger.info( Quotient + " This is the value of QUOTIENT");
logger.info( Reminder + " This is the value of REMINDER");
	}

}
