package com.example.demo;



import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ImageInserting {
	
	public static void main(String[] args) {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anound","root","beetroot@007");
			
			System.out.println(con);
			
			String qury="insert into menswear values(?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(qury);
			
			ps.setString(1, "formalshirt");
			
			FileInputStream fis=new FileInputStream("C://Users//ajithkumar.raja//Downloads/dress3.jpg");
			
			ps.setBinaryStream(3, fis, fis.available());
			
			ps.setString(2, "500");
			
			int a=ps.executeUpdate();
			
			System.out.println(a);
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

}