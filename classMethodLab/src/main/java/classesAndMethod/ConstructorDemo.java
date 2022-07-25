package classesAndMethod;

public class ConstructorDemo {
	public ConstructorDemo(Employee e) {
		
		System.out.println("value of e is :" + e.result);
	}

	
	public static void main(String[] args) {
	
        new ConstructorDemo(new Employee());
}}

class Employee {
	int i =1;
	int j = 2;
	int result =i+j;
}