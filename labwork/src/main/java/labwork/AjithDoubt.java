package labwork;

public class AjithDoubt {
	
		
		public AjithDoubt() {
			System.out.println("cons with default called...");
		}
		public AjithDoubt(int i) {
			System.out.println("cons with i value called...:"+i);
		}
		public AjithDoubt(Employee e) {
			System.out.println("employee cons called...."+e);
		}
		
		
		public static void main(String[] args) {
			new AjithDoubt();
			new AjithDoubt(20);
			new AjithDoubt(new Employee());
		}
	}
	class Employee{}

	


