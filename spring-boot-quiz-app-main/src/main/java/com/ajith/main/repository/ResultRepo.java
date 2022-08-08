package com.ajith.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ajith.main.DTO.Result;

@Repository
public interface ResultRepo extends JpaRepository<Result, Integer> {
	
}
