package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Profile;

@SpringBootApplication
@EnableAspectJAutoProxy
//@Profile("default")
public class SpringbasicApplication {

	public static void main(String[] args) {

		//ConfigurableApplicationContext ctx= SpringApplication.run(SpringbasicApplication.class, args);
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext(Kudumbam.class);
		
		
		Mother mother=ctx.getBean("mymother",Mother.class);
		
		mother.cookFood();
	}

}
