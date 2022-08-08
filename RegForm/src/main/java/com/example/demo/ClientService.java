package com.example.demo;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Transactional
@Service
public class ClientService {
	
	
@Autowired
private ClientRepository repository;

public ClientRepository getRepository() {
	return repository;
}

public void setRepository(ClientRepository repository) {
	this.repository = repository;
}
	
public void savedata(ClientDTO data) {
	 getRepository().save(data);
	
}
	
}
