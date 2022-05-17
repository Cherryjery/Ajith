package anoundtech;
import java.io.File;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class Addition {
	public static void main(String[] args) {
		Logger logger=Logger.getLogger(Addition.class);
int num = 100 ;
int second = 200;

String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
PropertyConfigurator.configure(log4jConfigFile); 


logger.info(num +" " + second); 
int value = num + second;

logger.info( "this is the final answer :" + value);

	}

}

