package classesAndMethod;

public class Cooking {

	public static void main(String[] args) {
Briyani ready= new Briyani.Chef("5kg", "2 1/2").ismasaladded(true).setiswateradded(true).cook();
System.out.println(ready.chicken() +":"+ (ready.rice()+ ":"+ ready.ismasalaadded()+":" + ready.iswateradded()));
	}

}
class Briyani 
{
	private String Chicken;
	private String Rice;
	
	private  boolean iswateradded;
	private boolean ismasaladded;
	
	
	public String chicken() {
		
		return Chicken;
	}
	
	public String rice() {
		return Rice;
	}
	public boolean iswateradded() {
		return iswateradded;
	}
	public boolean ismasalaadded() {
		return ismasaladded;
	}
	
	
	private Briyani(Chef cooked) {
		this.Chicken = cooked.Chicken;
		this.Rice= cooked.Rice;
		this.ismasaladded = cooked.ismasaladded;
		this.iswateradded = cooked.iswateradded;
		
		
		
	}
	
	public static class Chef
	{
		
		private String Chicken;
		private String Rice;
		
		private  boolean iswateradded;
		private boolean ismasaladded;
		
		
		
		public Chef(String chicken,String rice) 
		{
			this.Chicken=chicken;
			this.Rice=rice;
			}
			
		public Chef setiswateradded( boolean iswateradded )
		{
			this.iswateradded = iswateradded;
			return this ;
		}
		
		public Chef ismasaladded( boolean ismasaladded )
		{
			this.ismasaladded = ismasaladded;
			return this  ;
		}
		
		public Briyani  cook() {
			return new Briyani(this);
			
		}
		
		
		
	}
	
}