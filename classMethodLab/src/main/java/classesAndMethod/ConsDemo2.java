package classesAndMethod;

public class ConsDemo2 {

	public static void main(String[] args) {
	
		School.CreateSchool();

	}

}
class School {
	private School() {
		
	}

public static School CreateSchool() {
	
	return new School();
}



}
