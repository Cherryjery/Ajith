package code;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class dbConn {
	// Member Variables
    private String m_DBLoc = "jdbc:mysql://localhost:3306/demoemp";
   private String m_DBDriver = "com.mysql.cj.jdbc.Driver";
   private String USERNAME="root";
   private String PASSWORD="beetroot@007";
    private ResultSet m_RS = null;  // RecordSet Variable
    private Connection m_conn = null; 

    public String setData(String name, int age)	{
	String sqlInsSt = "INSERT INTO EMP VALUES('" + name + 
                                           "'," + age + ")" ;
	int n = 0;
    	if(m_conn == null) // if Connection has not been set
		return "Connection failed" ;
	
	try {
             Statement  s = m_conn.createStatement();
             n = s.executeUpdate(sqlInsSt);
            }catch (SQLException e) {} // if a SQL error occurs
        
    	if(n !=0) 
	 	return "Data is successfully inserted" ;
	else
		return "Data insertion is failed" ;
	}	


public ResultSet getData()	{
	String sqlStatement = "SELECT NAME, AGE FROM EMP" ;
    	ResultSet temp = executeQuery(sqlStatement);  	
	return temp;		
	}

 
    public ResultSet executeQuery(String stmt)
    { 
        if(m_conn == null) // if Connection has not been set
          m_RS = null; 
        else
        {  try {
             Statement  s = m_conn.createStatement();
             m_RS = s.executeQuery(stmt);
           }
           catch (SQLException e) {} // if a SQL error occurs
        }
        return(m_RS);
    }
    public String DBConnect()
    { 
      String retVal = ""; // there are no errors yet
      //Connection conn = null;
      try // try to connect to the database
      {  Class.forName(m_DBDriver);
         m_conn = DriverManager.getConnection(m_DBLoc);
      } 
      // if the driver class isn't found
      catch (ClassNotFoundException e) {retVal = e.toString();}
      catch (SQLException e) {retVal = e.toString();} // if a SQL error occurs
   
      return(retVal); // returns error messages or an empty string 
                      // that the caller must print.
    }
}







