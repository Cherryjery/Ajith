package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dataAcessObject.Mydao;

@Service
public class Myservice {
	@Autowired
private Mydao mydao;
	
	public Mydao getMydao() {
		return mydao;
	}
	public void setMydao(Mydao mydao) {
		this.mydao = mydao;
	}
	public void service() {
		System.out.println("Service method called .....");
		mydao.dao();
		
	}
	
	
}
