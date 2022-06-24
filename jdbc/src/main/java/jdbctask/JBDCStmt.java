package jdbctask;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class JBDCStmt {

	public static void main(String[] args) throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/anound","root","beetroot@007");
		
		System.out.println(con);
		
		String sql="update users set flag = 1";
		Statement stmt = con.createStatement();
		int noofrowschanged = stmt.executeUpdate(sql);
	     System.out.println("No of rows  updated .....:"+ noofrowschanged);
	}

}
