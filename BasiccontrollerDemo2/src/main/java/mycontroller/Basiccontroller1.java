package mycontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping
public class Basiccontroller1 {

@RequestMapping(method = RequestMethod.GET, value = "/hello")
public void sayhello(HttpServletRequest request) {
	System.out.println("say hello ");
	
}
	
	
}
