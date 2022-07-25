package services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconpack.DBConn;

public class Logout extends Action{
	
	public Logout() {
		
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
String name=request.getSession().getAttribute("uname").toString();
		
		DBConn con=new DBConn();
		
		boolean a=con.updateFlag(name, 0);
		
		if(a) {
			
			return "Logout-Success";
			
		}else {
		
		return "Logout-Fail";
		
		}
	}

}
