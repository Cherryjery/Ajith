package selftest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class CRUD {
	public static void main(String[] args) throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/anound", "root", "beetroot@007");
		int R;
	    Statement stmt = con.createStatement();
  		String sql = "CREATE TABLE employ " + "(rollno INTEGER not NULL, " +"name VARCHAR(255), " + " address VARCHAR(255), " + "section VARCHAR(255))";
		stmt.executeUpdate(sql);
		System.out.println("Created table in given database...");
		
		//Insert
		String sql1 = "INSERT INTO employ (rollno, name, address,section) VALUES (?, ?, ?, ?)";
		PreparedStatement statement1 = con.prepareStatement(sql1);
		
		statement1.setInt(1, 1);
		statement1.setString(2, "lion");
		statement1.setString(3, "fort");
		statement1.setString(4, "12-a");
		System.out.println(statement1);
		R = statement1.executeUpdate(
				"INSERT INTO employ (rollno, name, address,section) VALUES (2, 'kumar', 'lenin st', '10-a')");
		System.out.println(R);
		System.out.println("A new user was inserted successfully!");
		
		//Update employ record
		R = statement1.executeUpdate("Update employ set section='6-b' where name='lion'");
		System.out.println(R);
		System.out.println("Update successfully!");
		// delete employ record
		R = statement1.executeUpdate("delete from employ where address = 'eion'");
		System.out.println(R);
		System.out.println("Deleted successfully...");
		
		// read employ records
		ResultSet rs = statement1.executeQuery("Select * from employ");
		while (rs.next()) {
			System.out.println("rollno : " + rs.getInt("rollno") + ", name : " + rs.getString("name") + ", address : "
					+ rs.getString("address") + ", section : " + rs.getString("section"));
		}
		System.out.println("showed success");
	}
}