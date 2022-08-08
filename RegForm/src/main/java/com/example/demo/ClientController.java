package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/map")
public class ClientController {

	@Autowired
	private  ClientService service;

	public ClientService getService() {
		return service;
	}

	public void setService(ClientService service) {
		this.service = service;
	}

	
@RequestMapping(method = RequestMethod.GET , value = "/clientreg")
public ModelAndView showRegister(ClientDTO dto) {
	ModelAndView mv= new ModelAndView();
	
	mv.addObject("Client",dto);
	mv.setViewName("register");
	return mv;
}
@RequestMapping(method = RequestMethod.POST, value = "/clientreg")
public  ModelAndView datasaver(@ModelAttribute ("Client") ClientDTO dto ) {
	ModelAndView mv= new ModelAndView();
	mv.addObject("Client",dto);
	mv.setViewName("welcome");
	service.savedata(dto);
	return mv;
}


	
	
}
