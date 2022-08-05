package mycontroller1;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/form2")
public class FormControl {

	@RequestMapping(method = RequestMethod.GET, value = "/regform")
	public ModelAndView loadForm() {
		ModelAndView mandv= new ModelAndView();
		mandv.addObject("Aji", new Users());
		mandv.setViewName("usersform");
		return mandv;
	}
	
		

	}


	