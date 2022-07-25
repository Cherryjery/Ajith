package javapractice;

public class Dog13 {
	String name ;
	String breed;
	int age ;
	String color;
	public Dog13 (String name , String breed, int age, String color){
		this.name = name;
		this.breed = breed;
		this.age = age;
		this.color = color;
	}
	
	public String  getname() {
		return name;
	}
	
	public String getbreed() {
		return breed;
		
	}
	public int getage() {
		return age;
	}
	public String getcolor() {
		return color;
	}
	
	public String toString() {
		return ("Hi name is " + this.getname()+ "\n my breed , age and color "+ this.getbreed()  + this.getage() +this.getcolor());
	}
	
	public static void main(String[] args) {
		Dog13 papy = new Dog13("puppy","papillion",5, "white");
		
		//Dog13 papy1=(Dog13)papy.clone("puppy","papillion",5, "white");try to clone but arugument of this type is not applicable for clone...
		
		System.out.println(papy.toString());

	}

}
