package classesAndMethod;

//super key word refers - super class constructor,super class variable
//super class method
public class SuperKeyWordDemo {
	public static void main(String[] args) {
		TopTopStar m=new Medium();
		m.topMet();
		//m.topMetSub();
	}
}
abstract class TopTopStar{
	public void topMet() {
		System.out.println("top top met method called ....");
	}
}
abstract class TopStar extends TopTopStar{
	public void topMet() {
		super.topMet();
		System.out.println("top met method called ....");
	}
}
abstract class Top extends TopStar{
	 public void topMet() {
		super.topMet();
		System.out.println("top met sub method called....");
	}
}
class Medium extends Top{
	
}
