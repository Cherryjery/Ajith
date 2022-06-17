package secondlevel;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;


public class ThreadDemo {

	public static void main(String[] args) {
		
		ExecutorService es=Executors.newFixedThreadPool(2);
		es.execute(
				()->{
					synchronized(Hotel.class) {
					Thread.currentThread().setName("rajini");
					Hotel.pgroom.usePgroom();
					}
				}
		);
		
		es.execute(
				()->{
					synchronized(Hotel.class) {
					Thread.currentThread().setName("kamal");
					Hotel.pgroom.usePgroom();
					}
				}
		);
		es.shutdown();
	}

}
class Handwash {
	
}
class PgRoom {
	public void usePgroom () {
		Thread t=Thread.currentThread();
		String name=t.getName();
		System.out.println(name+" is using the PgRoom...");
		try {Thread.sleep(5000);}catch(Exception e) {}
		System.out.println(name+" came out of PgRoom...");   
	}
}
class Hotel {
	public void usePgroom () {
		Thread t=Thread.currentThread();
		String name=t.getName();
		System.out.println(name+" is using the PgRoom...");
		try {Thread.sleep(5000);}catch(Exception e) {}
		System.out.println(name+" came out of PgRoom...");   
	}
	static PgRoom  pgroom = new PgRoom ();
}