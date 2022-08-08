package com.example.demo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserService {
@Autowired
	private UserRepository udao;
	

	public UserRepository getUdao() {
		return udao;
	}

	public void setUdao(UserRepository udao) {
		this.udao = udao;
	}

	public void saveUser(User userref) {
		getUdao().save(userref);
	}
	public List<User> checkuid (User savereg ) {
		return getUdao().checkUid(savereg);
	}
	public List<User> checkuser (String username , String pass ) {
		return getUdao().checkuser(username, pass);
	}
}
