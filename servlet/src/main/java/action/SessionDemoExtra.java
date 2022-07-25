package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;


@WebServlet("/SessionDemoExtra")
public class SessionDemoExtra extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		
		Date createTime = new Date(session.getCreationTime());
		

		Date lastAcessesTime = new Date (session.getLastAccessedTime());
		
		String title = "Welcome Back to Aound Techonology";
        Integer visitCount = new Integer(0);
        String visitCountKey = new String("visitCount");
        String userIDKey = new String("userID");
        String userID = new String("Ajith");
        
        if (session.isNew()) {
            title = "Welcome Back to Aound Techonology";
            session.setAttribute(userIDKey, userID);
        }
        else {
            visitCount = (Integer)session.getAttribute(
                visitCountKey);
            visitCount = visitCount + 1;
            userID
                = (String)session.getAttribute(userIDKey);
        }
        session.setAttribute(visitCountKey, visitCount);
 
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String docType
        = "<!doctype html "
          + "transitional//en\">\n";

        out.println(
                docType + "<html>\n"
                + "<head><title>" + title + "</title></head>\n"
                +
     
                "<body bgcolor = \"#f0f0f0\">\n"
                + "<h1 align = \"center\">" + title + "</h1>\n"
                + "<h2 align = \"center\">Ajith Session Information</h2>\n"
                + "<table border = \"1\" align = \"center\">\n"
                +
     
                "<tr bgcolor = \"#949494\">\n"
                + "  <th>Session info</th><th>value</th>"
                + "</tr>\n"
                +
     
                "<tr>\n"
                + "  <td>id</td>\n"
                + "  <td>" + session.getId() + "</td>"
                + "</tr>\n"
                +
     
                "<tr>\n"
                + "  <td>Creation Time</td>\n"
                + "  <td>" + createTime + "  </td>"
                + "</tr>\n"
                +
     
                "<tr>\n"
                + "  <td>Time of Last Access</td>\n"
                + "  <td>" + lastAcessesTime + "</td>"
                + "</tr>\n"
                +
     
                "<tr>\n"
                + "  <td>User ID</td>\n"
                + "  <td>" + userID + "</td>"
                + "</tr>\n"
                +
     
                "<tr>\n"
                + "  <td>Number of visits</td>\n"
                + "  <td>" + visitCount + "</td>"
                + "</tr>\n"
                + "</table>\n"
                + "</body>"
                + "</html>");
        }
    
		
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		doGet(request, response);
	}

}
