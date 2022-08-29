package restcontrollermy;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/aji")
public class Demo_1 {

	@RequestMapping(method = RequestMethod.GET,value="/say")
	public void sayHello1() {
		System.out.println("hi bro my name is ajith...!");
	}
	
	@RequestMapping(method = RequestMethod.GET,value ="/say2")
	public  String sayHello2() {
		System.out.println(" 	sayhello2 called");
		return "welcome";
	}
	@RequestMapping (method = RequestMethod.GET,value = "/say3")
	public ModelAndView sayHello3 (ModelAndView mdv) {
		mdv.addObject("mykey" ,"Welcome to mvc");
			mdv.setViewName("welcome");
			return mdv;
		}
	@RequestMapping(method = RequestMethod.GET,value = "/say4")
	public ModelAndView sayHello4(ModelAndView mdv ,HttpServletRequest req) {
	mdv.addObject("mykey","welcome to mvc with session ");
	mdv.setViewName("welcome");
	HttpSession session = req.getSession();
	req.setAttribute("hello", "hello world hello world hello world...");
	return mdv;
	}
	
}
