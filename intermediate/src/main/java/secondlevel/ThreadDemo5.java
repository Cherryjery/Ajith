package secondlevel;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadDemo5 {
	public static void main(String[] args) {
		ExecutorService es=Executors.newFixedThreadPool(2);
		//Theatre iMax=new Theatre();
		
		es.execute(
				()->{
					synchronized(Theatree.class) {
					Thread.currentThread().setName("rajini");
					Theatree.toilet.useToilet();
					}
				}
		);
		
		es.execute(
				()->{
					synchronized(Theatree.class) {
					Thread.currentThread().setName("kamal");
					Theatree.toilet.useToilet();
					}
				}
		);
		es.shutdown();
	}
}
class Toilett{
	public void useToilet() {
		Thread t=Thread.currentThread();
		String name=t.getName();
		System.out.println(name+" is using the toilet...");
		try {Thread.sleep(5000);}catch(Exception e) {}
		System.out.println(name+" came out of toilet...");
	}
}
class Theatree{
	static Toilett toilet=new Toilett();
}