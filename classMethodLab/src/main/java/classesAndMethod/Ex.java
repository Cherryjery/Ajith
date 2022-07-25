package classesAndMethod;

public class Ex {
	public static void main(String[] args) {
		
	
        Blue b= new Blue ();
           b.setRed(new Red());
           b.r.color();
	
	
	}
}

class Red{
	public void color() {
		
		System.out.println("lets start the game....");
	}
}

class Blue{

	
	public  Red r;
	public void setRed(Red r) {
		
		this.r=r;
	
		
	}
}
