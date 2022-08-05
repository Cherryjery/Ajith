package mycontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
@Controller
@SessionAttributes({"myobj"})
@RequestMapping("/bs4")
public class BasicController4 {

	@RequestMapping(method = RequestMethod.GET, value = "/basic")
	public String sayHelloBasic() {
	return "home";
	
	}
	
	@RequestMapping(method = RequestMethod.GET,value = "/basic2")
	public String sayHello(HttpServletRequest request,Model model) {
		return"home";
	}
	
	@RequestMapping(method = RequestMethod.GET , value = "/basic3")
	public ModelAndView sayHello3() {
		ModelAndView mdvw= new ModelAndView();
		mdvw.addObject("myobj","this is objvalue.....");
		mdvw.setViewName("home");
		return mdvw;
	}
}
