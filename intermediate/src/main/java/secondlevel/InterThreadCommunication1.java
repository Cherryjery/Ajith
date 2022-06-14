package secondlevel;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
public class InterThreadCommunication1 {

	public static void main(String[] args) {
		ExecutorService es=Executors.newFixedThreadPool(2);
		 Chat m = new Chat();
		 es.execute(()->{
				for(int i=0;i<5;i++) {
					 String[] s1= { "Hi", "How are you ?", "I am also doing fine!" };
					m.Question(s1[i]);
				}
			});
			es.execute(()->{
				for(int i=0;i<5;i++) {
					 String[] s2 = { "Hi", "I am good, what about you?", "Great!" };
					m.Answer(s2[i]);
				}
			});
			es.shutdown();
	}

}
class Chat {
	boolean flag = false ;
	
	 public synchronized void Question(String msg) {
		
		 if (flag) {
			 
	         try {
	            wait();
	         } catch (Exception e) {
	           
	         }
	      }
		 System.out.println(msg);
		 
	      flag = true;
	      notify();
	 }
	     
    public synchronized void Answer(String msg) {
    	
    	 if (!flag) {
             try {
                wait();
             } catch (Exception e) {
              
             }
          }

    	 System.out.println(msg);
          flag = false;
          notify();
       }
    
	 }
	
	
