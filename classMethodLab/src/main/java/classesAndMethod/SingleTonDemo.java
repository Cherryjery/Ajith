package classesAndMethod;

public class SingleTonDemo {
public static void main(String[] args) {
	Dbconnection.getDbconnection();
	Dbconnection.getDbconnection();
	Dbconnection.getDbconnection();
	
}
}
class Dbconnection{
	private static Dbconnection dbcon;
	private  Dbconnection() {
		System.out.println("DBCon object created..."); 
	}
	
	public static Dbconnection getDbconnection() {
		if (dbcon ==null) {
			dbcon = new Dbconnection();
			return dbcon;
		}else {
			return dbcon;
		}
	}
}
