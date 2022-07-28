package mycontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/bs")
public class BasicController {

   @RequestMapping(method = RequestMethod. GET , value = "/spring")
    public void sayHello() {
	System.out.println("say hello method.......");
}
   @RequestMapping(method = RequestMethod. GET , value = "/spring1")
   public void sayHello2(@RequestParam("name")String uname ,@RequestParam("pass")String upass) {
	System.out.println("say hello method2......."+uname+":"+ upass);
}
   @RequestMapping(method = RequestMethod.GET, value = "/hello3/{myp}")
	public void sayHello3(@PathVariable("myp") String mypath) {
		System.out.println("say hello method...."+mypath);
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/hello4/{myp}/{myw}")
	public void sayHello3(@PathVariable("myp") String mypath,@PathVariable("myw") String mywife) {
		System.out.println("say hello method...."+mypath+":"+mywife);
	}
}
