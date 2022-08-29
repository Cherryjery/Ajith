package com.example.demo;

import org.springframework.stereotype.Component;

@Component("fmi")
public class FoodMakingItems {
	public void useFoodItems() {
		System.out.println("kitche  food items used....for cooking...");
	}
}
