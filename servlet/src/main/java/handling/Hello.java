package handling;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/aji")
public class Hello extends HttpServlet {
	

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	  public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		  
		  
	      res.setContentType("text/html");
	      PrintWriter pw = res.getWriter();
	      String name = req.getParameter("name");
	      pw.println("<html>");
	      pw.println("<head><title>Hello "+name+"</title></head>");
	      pw.println("<body>");
	      pw.println("<h1>Hello, <blink>"+name+"</blink></h1>");
	      pw.println("</body>");
	      pw.println("</html>");  
	      
	      
		  
		  
	  }
	

}
