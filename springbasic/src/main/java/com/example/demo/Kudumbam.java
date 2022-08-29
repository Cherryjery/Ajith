package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;


@Configuration
@EnableAspectJAutoProxy
@Profile("default")
public class Kudumbam {
	protected FatherAspect fatherAspect;

	@Bean(name = "mymother")
	public Mother getMother() {
		return new Mother();
		}
	
	@Bean(name="kitchen")
	public Kitchen getKitchen() {
		return new Kitchen();
	}
	
	@Bean(name="utensils")
	public Utensils getUtensils() {
		return new Utensils();
	}
	
	@Bean("fmi")
	public FoodMakingItems getFMI() {
		return new FoodMakingItems();
	}
	
	@Bean("Servant")
	public Servant getServant() {
		return new Servant();
	}
	
	@Bean("Stores")
	
	public Stores getStores() {
		return new Stores();
	}
	@Bean
	public FatherAspect getAspect() {
	return new FatherAspect();
	}
	
}
