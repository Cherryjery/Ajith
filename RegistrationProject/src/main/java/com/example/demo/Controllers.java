package com.example.demo;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;





@Controller

@RequestMapping("/map")
public class Controllers {
private UserService service;
@Autowired
public UserService getService() {
	return service;
}

public void setService(UserService service) {
	this.service = service;
}

@RequestMapping(method = RequestMethod.GET, value ="/register")
public ModelAndView loadForm() {
	User userref= new User();
	userref.setFlag(0);
	
	Long a=userref.getId()+1;
	
	ModelAndView mandv = new ModelAndView();
	mandv.addObject("userObj", userref);
	mandv.setViewName("Registerform");
	return mandv;
}
@RequestMapping(method = RequestMethod.POST, value = "/register")
public ModelAndView processForm(@Valid @ModelAttribute("userObj") User userref,BindingResult result) {
	ModelAndView mandv=new ModelAndView();
	
	if(result.hasErrors()) {
		mandv.setViewName("Registerform");
		           
		 return mandv;
	}
	else {
		System.out.println("Username...:"+userref.getUsername());
		userref.setUsername(userref.getUsername());
		mandv.addObject("myuser",userref);
		mandv.setViewName("welcome");
		return mandv;
	}
}


@Autowired


@RequestMapping(method = RequestMethod.GET, value = "/register")
public ModelAndView login1() {
	ModelAndView op = new ModelAndView();
	op.setViewName("login");
	return op;

}

@RequestMapping(method = RequestMethod.POST, value = "/register")
public ModelAndView login(HttpServletRequest request) {

	ModelAndView op = new ModelAndView();

String kname=request.getParameter("kname");
String kpassword=request.getParameter("kpassword");
return op;






}}
