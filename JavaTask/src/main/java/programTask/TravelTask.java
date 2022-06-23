package programTask;
import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
import  org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;


public class TravelTask {
	static Logger logger=Logger.getLogger(TravelTask.class);
	
	
	public static void main(String[] args) {
		  Scanner s=new Scanner(System.in);
		  
		
		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "log4j.properties";
		PropertyConfigurator.configure(log4jConfigFile);
		Inform.infor();
		
		
		
		}


static class Inform {	
	static Logger logger=Logger.getLogger(Inform.class);

	static int date,month,year,hour,minute;
	
	static double distance,speed;
	
	static Scanner s=new Scanner(System.in);
	static void infor () {
		
		LocalDateTime datetime = LocalDateTime.of(s.nextInt(),s.nextInt(),s.nextInt(),s.nextInt(),s.nextInt(),s.nextInt());
		DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd\t HH:mm:ss a");
		String text = datetime.format(df);
		
		
		
         logger.info("The Start Time is....."+text);
		
		logger.info("Enter Distance in KM...........");
		
		distance=s.nextDouble();
		
		logger.info("Distance is..........."+distance);
		
		logger.info("Enter Speed in Hours...........");
		
		speed=s.nextDouble();
		
		logger.info("Speed in..........."+speed);

		
	

		
		logger.info("Enter Time....................");
		
		hour=s.nextInt();
		
		logger.info("Enter Minutes....................");
		
		minute=s.nextInt();
	}

		}
}
