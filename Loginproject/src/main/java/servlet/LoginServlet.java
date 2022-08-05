package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("*.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		try {
			Class.forName( "com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			PrintWriter out = response.getWriter();
			
			try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajith","root","beetroot@007");
				String n = request.getParameter("txtname");
				String p = request.getParameter("txtpass");
				PreparedStatement ps = con.prepareStatement("select uname from login where uname=? and password=?");
				ps.setString(1, n);
				ps.setString(2, p);
			ResultSet rs=	ps.executeQuery();
			if (rs.next()) {
				RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
				rd.forward(request, response);
				
			}else {
				out.println("not updated");
				
			}
				
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}

		
		}}


