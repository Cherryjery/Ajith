package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("mymother")
public class Mother {

	@Autowired
	@Qualifier("kitchen")
	private Kitchen mothersKitchen;
	
	@Autowired
	private Servant ramukaka;
	@Autowired
	private Stores pairoom;
	
	public Servant getRamukaka() {
		return ramukaka;
	}

	public void setRamukaka(Servant ramukaka) {
		this.ramukaka = ramukaka;
	}

	public Stores getPairoom() {
		return pairoom;
	}

	public void setPairoom(Stores pairoom) {
		this.pairoom = pairoom;
	}

	public Kitchen getMothersKitchen() {
		return mothersKitchen;
	}

	public void setMothersKitchen(Kitchen mothersKitchen) {
		this.mothersKitchen = mothersKitchen;
	}

	public void cookFood() {
		mothersKitchen.cookFood();
		ramukaka.cleanVessels();
		pairoom.getItems();
	}
}
