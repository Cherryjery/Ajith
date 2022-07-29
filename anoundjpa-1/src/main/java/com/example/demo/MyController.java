package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/myc")
public class MyController {
	
	@Autowired
	private StudentService service;
	
	
	public StudentService getService() {
		return service;
	}
	public void setService(StudentService service) {
		this.service = service;
	}
	@RequestMapping("/create")
	public void create() {
		System.out.println("saving student object...");
		Student student=new Student();
		student.setSid(10);
		student.setSage(20);
		student.setScity("chennai");
		student.setSname("Ajith");
		
		
		service.saveStudent(student);
		System.out.println("student object saved...........");
	}
}