package labwork;

public class PassByValueDemo {
	public static void main(String[] args) {
		PassByValueDemo obj=new PassByValueDemo();
		obj.met(20);//passing a value of 20 the met method as argument
		obj.met2("k",0);
		
		sMet();
		
	}
	
	public void met(int i) {
		i=i+10;
	
		met2("hello",i);
		
	}
	
	void met2(String s,int i) {
		
		
		System.out.println(s+":"+i);
	}
	public static void sMet() {
		//static methods cannot access non static methods and properties
		//met();
	}
	public void met3(int i) {
		met2("hello",i);
}}