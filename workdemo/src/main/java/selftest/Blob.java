package selftest;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Blob {

    public static void main(String[] args) throws Exception {

        Connection connection = null;
        Statement stmt = null;

        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/ajith", "root", "beetroot@007");
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from employee");
            if (rs.next()) {
                InputStream is = rs.getBinaryStream("photo");
                FileOutputStream fos = new FileOutputStream(
                        "C:\\Users\\ajithkumar.raja\\Downloads\\Ajith.jpg");
                int bytesRead = 0;
                byte[] buffer = new byte[4096];
                while ((bytesRead = is.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
                is.close();
                fos.close();
            }

            connection.close();
            System.out.println("Image created");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}