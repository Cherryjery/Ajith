package labwork;



 class  Detials {	
	
	
	String name;
	int Age;
	String bank;
	double salary;
	
	Detials(String name,int Age,String bank,double salary){
		
		this.Age = Age;
		this.bank = bank;
		this.name = name;
		this.salary = salary;
		
	}}
	 
	
public class  ObjComplex1 {	
   

	
	  public static void main(String[] args) {
		  
		  Detials given = new Detials("Ajith",27,"IOB",  2536.5);

		 System.out.print(given.name + "\n " + given.Age + " \n " + given.bank + "\n " + given.salary);
		
	
	  }
}
