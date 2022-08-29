package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("kitchen")
public class Kitchen {

	@Autowired
	@Qualifier("utensils")
	private Utensils foodCookingItems;
	
	@Autowired
	@Qualifier("fmi")
	private FoodMakingItems foodMakingItems;
	
	public Utensils getFoodCookingItems() {
		return foodCookingItems;
	}
	public void setFoodCookingItems(Utensils foodCookingItems) {
		this.foodCookingItems = foodCookingItems;
	}
	public FoodMakingItems getFoodMakingItems() {
		return foodMakingItems;
	}
	public void setFoodMakingItems(FoodMakingItems foodMakingItems) {
		this.foodMakingItems = foodMakingItems;
	}
	
	public void cookFood() {
		System.out.println("cooking food started...");
		foodMakingItems.useFoodItems();
		foodCookingItems.useKitchenItems();
	}
}
