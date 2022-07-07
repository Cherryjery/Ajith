package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/SessionDemo")
public class SessionDemo extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost (request,response);
		
		
	
	}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int count=1;
	
	PrintWriter out=response.getWriter();
	HttpSession session=request.getSession();
	Object obj=session.getAttribute("counter");
	if(obj==null) {
		out.println("Welcome for the first time.....");
		session.setAttribute("counter", ++count);
	}
	else {
		int c=Integer.parseInt(obj.toString());
		out.println("You are comming for the "+c+" times");
		session.setAttribute("counter", ++c);
	}
		
		
	}

}
