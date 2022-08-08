package patternTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
public class JBDCDemo {
	public static void main(String[] args) throws Exception {
		CollegeDB j = new CollegeDB();
//insert
		j.insert(11, "rango", "dubai", "b.tech");
		j.insert(12, "tom", "america", "be mech");
		j.insert(13, "jerry", "america", "m.tch");
		j.insert(14, "pattlu", "india", "m.tch");
		j.insert(15, "stuvert", "america", "be.civil");
//retrive		
//		j.retrive();
//update	
//		j.upDate(1,"kumar");
//delete	
//		j.deLete(1);
//		j.deLete(2);
//		j.deLete(3);
//		j.deLete(4);
//		j.deLete(5);
	}
}
class CollegeDB {
	public CollegeDB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public void insert(int a, String b, String c, String d) {
		try {
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/anoud", "root", "Root");
			
			
			//Statement stmt = com.createStatement();
			//String sql = "create table members   (rollno INTEGER not NULL,name VARCHAR(255),  address VARCHAR(255), section VARCHAR(255))";
			//stmt.execute(sql);
			
			//System.out.println("Created table in given database..." + stmt);
			String sql1 = "insert into members (rollno, name, address,section) values(?, ?, ?, ?)";
			PreparedStatement statement1 = com.prepareStatement(sql1);
			statement1.setInt(1, a);
			statement1.setString(2, b);
			statement1.setString(3, c);
			statement1.setString(4, d);
			statement1.executeUpdate();
			System.out.println("A new user was inserted successfully!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void upDate(int rollno, String name) {
		try {
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/anoud", "root", "Root");
			String sql = "update  members set rollno=? where name=?";
			PreparedStatement Stat2 = com.prepareStatement(sql);
			Stat2.setInt(1, rollno);
			Stat2.setString(2, name);
			Stat2.execute();
			System.out.println("Updated....");
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	public void deLete(int rollno) {
		try {
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/anoud", "root", "Root");
			String sql = "delete from members where  rollno=?";
			PreparedStatement Stat2 = com.prepareStatement(sql);
			Stat2.setInt(1, rollno);
			Stat2.execute();
			System.out.println("del....");
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	public void retrive() {
		try {
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/anoud", "root", "Root");
			String sql = "select * from members";
			PreparedStatement Stat2 = com.prepareStatement(sql);
			ResultSet rs = Stat2.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getInt("rollno"));
				System.out.println(rs.getString("name"));
				System.out.println(rs.getString("address"));
				System.out.println(rs.getString("section"));
			}
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}