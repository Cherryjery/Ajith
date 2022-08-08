package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import comp.Mycomponenet;

@SpringBootApplication
@ComponentScan(basePackages = {"comp","dataAcessObject","service"})
public class AnoundProject {

	public static void main(String[] args)
	{
		ConfigurableApplicationContext cnfx= SpringApplication.run(AnoundProject.class, args);
 		Mycomponenet comp = cnfx.getBean("aji",Mycomponenet.class);
 		comp.component();
	}

}
