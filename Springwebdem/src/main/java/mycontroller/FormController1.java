package mycontroller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/form1")
public class FormController1 {

	@RequestMapping(method = RequestMethod.GET, value ="/register")
	public ModelAndView loadForm() {
		ModelAndView mandv = new ModelAndView();
		mandv.addObject("userObj",new Userss());
		mandv.setViewName("userform");
		return mandv;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/register")
	public ModelAndView processForm(@Valid @ModelAttribute("userObj") Userss user,BindingResult result) {
		ModelAndView mandv=new ModelAndView();
		
		if(result.hasErrors()) {
			mandv.setViewName("userform");
		//	 FieldError customError =new FieldError("userObj","uname",messageSource.getMessage("mymessage", null, new Locale("ta")));
	    //   result.addError(customError);	           
			 return mandv;
		}
		else {
			System.out.println("Username...:"+user.getUname());
			user.setUname(user.getUname()+"anound technologies...");
			mandv.addObject("myuser",user);
			mandv.setViewName("welcome");
			return mandv;
		}
	}
}
