package com.ajith.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ajith.main.DTO.Question;

@Repository
public interface QuestionRepo extends JpaRepository<Question, Integer> {

}