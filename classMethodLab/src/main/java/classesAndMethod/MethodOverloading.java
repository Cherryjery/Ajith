package classesAndMethod;

public class MethodOverloading {

	public static void main(String[] args) {
		Haaall hall = new Haaall() ;
		hall.party("birthday");

	}

}
class Haaall {
	public void party(String purpose) {
		if (purpose.equals("birthday")) {
			System.out.println("birthday room party is ready.....lets have fun guys");
		}
		else if (purpose.equals("Marriage")) {
			System.out.println("Marriage room is ready ......lets get marriage   ");
		}
	}
	
}
