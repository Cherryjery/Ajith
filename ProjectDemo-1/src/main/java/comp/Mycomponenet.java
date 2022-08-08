package comp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import service.Myservice;

@Component("aji")
public class Mycomponenet {
	@Autowired
	private Myservice myserc;
	
public Myservice getMyserc() {
		return myserc;
	}
	public void setMyserc(Myservice myserc) {
		this.myserc = myserc;
	}

public void component() {
	System.out.println("Component called .......");
	myserc.service();
	
}

}
