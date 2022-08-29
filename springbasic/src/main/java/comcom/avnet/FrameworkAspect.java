package comcom.avnet;

import java.util.logging.Logger;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class FrameworkAspect {
	private static final String CLASS_NAME = FrameworkAspect.class.getName();
	private static Logger logger = Logger.getLogger(CLASS_NAME);

	@Before("execution(* comcom.avnet.Human.seeHuman())")
	public void cry() {
		System.out.println("cry method called................................................");
		String methodName = "cry";
		logger.entering(CLASS_NAME, methodName);
		logger.info("crying started");
		logger.exiting(CLASS_NAME, methodName);
	}
}
