package com.example.demo;

import org.springframework.stereotype.Component;

@Component("utensils")
public class Utensils {
	public void useKitchenItems() {
		System.out.println("kitchen items used....for cooking...");
	}
}
