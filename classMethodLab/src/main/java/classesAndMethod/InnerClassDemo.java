package classesAndMethod;

public class InnerClassDemo {

	public static void main(String[] args) {
             Outer out = new Outer();
             Outer.Inner inner = new Outer().new Inner();
    
             inner.innerMethod();
          Outer2.Innerstatic instatic = new Outer2.Innerstatic(); 
          instatic.staticInner();
          
          
	}

}
class Outer{
	 private String adi = "good boy";//declaring a variables it can access by inner class
	
	/*public*/ private void outerMethod() {
	    new Inner().innerMethod();
		
		System.out.println("outer method called "+new Inner() .ajith );
	}
	
	class Inner {//inner class access all of outer class
		private String ajith = "hello";
		public void innerMethod () {
			
			outerMethod();// here i am accessing outer class method 
			System.out.println("inner method called"+  " :  "  + adi);//inner class access outer class variables
		}
		
	}
}
class Outer2 {
	
	static class Innerstatic {
		public void  staticInner() {
			System.out.println("Static inner class called");
		}
	}
	
}