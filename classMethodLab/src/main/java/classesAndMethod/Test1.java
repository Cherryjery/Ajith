package classesAndMethod;

public class Test1 {
	
	public static void main(String[] args) {
		
		Abd a=new Abd.InnerAbd("Race", "car").e(false).f(true).build();
		
		System.out.println(a);
		
		System.out.println(a.a()+","+a.b()+","+a.c()+","+a.d());
		
	}

}

class Abd{
	
	private String a,b;
	
	private boolean c,d;
	
	public String a(){
		
		return a;
		
	}
	
	public String b(){
		
		return b;
		
	}
	
	public boolean c() {
		
		return c;
		
	}
	
	public boolean d() {
		
		return d;
		
	}
	
	private Abd(InnerAbd bd) {
		
		this.a=bd.a;
		
		this.b=bd.b;
		
		this.c=bd.c;
		
		this.d=bd.d;
		
	}
	
	public static class InnerAbd{
		
		private String a,b;
		
		private boolean c,d;
		
		public InnerAbd(String a,String b) {
			
			this.a=a;
			
			this.b=b;
			
		}
		
		public Abd build() {
			
			return new Abd(this);
			
		}
		
		public InnerAbd e(boolean c) {
			
			this.c=c;
			
			return this;
			
		}
		
		public InnerAbd f(boolean d) {
			
			this.d=d;
			
			return this;
			
		}
		
	}
	
}