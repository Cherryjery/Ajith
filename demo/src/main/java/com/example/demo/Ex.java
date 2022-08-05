package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;
@SpringBootApplication
public class Ex {
	public static void main(String[] args) {
		ConfigurableApplicationContext ctx=SpringApplication.run(Ex.class, args);
Blue b=ctx.getBean("b",Blue.class);
	b.getRed();
	}
}
@Component("r")
class Red{
	public void color() {
		System.out.println("lets start the game....");
	}
}
@Component("b")

class Blue{
	@Autowired
	
	private Red r;
	public Red  getRed() {
		return r;
		}
	public void  setRed(Red r) {
		this.r=r;
	}
}












