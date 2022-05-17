package anoundtech;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import java.util.*;
import java.io.File;
public class FindLargest {
  static Logger logger = Logger.getLogger(FindLargest.class);
	
	public static void main(String[] args) {
		
   String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);
	

	double n1 = 22.5, n2 = 10.5, n3= 15.2;
	 if (n1>=n2 && n1>=n3) {
		 logger.info(n1 + " Is the Largest number" );
	 }else if (n2 >=n1 && n2>=n3) {
		 logger.info(n2 + "  Is the Largest number" );
 }else {
	 logger.info(n3 + " Is the Largest number" );
 }
	
	}}