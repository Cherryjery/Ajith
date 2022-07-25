package labwork;
import java.io.File;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import java.util.Scanner; 

public class PrintANumber {
	static Logger logger=Logger.getLogger(PrintANumber.class);
	
	public static void main(String[] args) {
		
		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);
		
		Scanner reader = new Scanner(System.in); 
		 System.out.print("Enter a number: "); 
		
		int number = reader.nextInt(); 
		
		 System.out.println("You entered: " + number);
	}

}
