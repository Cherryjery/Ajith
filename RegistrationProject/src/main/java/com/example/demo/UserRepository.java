package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
	
@Query ("from User where username=?1 and password=?2")	
public List<User> checkuser(String username , String password);

@Query("from User order by id ASC")
public List<User> checkUid(User user);


	
	
}
