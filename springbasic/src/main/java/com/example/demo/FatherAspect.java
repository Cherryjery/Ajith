package com.example.demo;

import java.util.logging.Logger;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class FatherAspect {
	private static final String CLASS_NAME = FatherAspect.class.getName();
	private static Logger logger = Logger.getLogger(CLASS_NAME);

	@Before("execution(* com.example.demo.Mother.cookFood())")
	public void allIndiaRadio() {
		System.out.println("veruppething akka and akka veetukkarar.........");
		String methodName = "cookFood";
		logger.entering(CLASS_NAME, methodName);
		logger.info("anouncement started..........veruppething akka and akka veetukkarar");
		logger.exiting(CLASS_NAME, methodName);
	}
}
