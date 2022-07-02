package labwork;

public class InterDemo4 {
	public static void main(String[] args) {
		//1. Anonymous 2. Method Referencing 3. Lambda 4. Muthur teacher
		
		//1. Anonymous inner class implementation
		new FInterOne() {			
			@Override
			public void met() {
				System.out.println("anonymous inner class met called..");				
			}
		}.met();
		
		//Method Referencing...
		FInterOne one=InterDemo4::mymethod;
		one.met();
		
		//Lambda
		FInterOne oneLambda=()->{System.out.println("logic in lambda called...");};
		
		//muthu teacher style
		FInterOne oneMuthu=new MyFInterOneImpl();
		oneMuthu.met();
		
	}
	public static void mymethod() {
		System.out.println("my method called...");
	}
}
class MyFInterOneImpl implements FInterOne{
	@Override
	public void met() {
		System.out.println("met normal old implementation called...");
	}
}
//Functional interfaces - Interface with only one method
interface FInterOne{
	public void met();
}
interface FInterTwo{
	public int met();
}
interface FInterThree{
	public int met(int i,String s);
}
interface FInterFour<Account>{
	public  Account transfer(Account act,int amt);
}