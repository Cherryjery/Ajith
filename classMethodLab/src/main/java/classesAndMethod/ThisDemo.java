package classesAndMethod;

public class ThisDemo {

	public static void main(String[] args) {
		Fan usha = new Fan();
	}

}
class Fan {
	public void on() {
		System.out.println("fan oned........");
	}
	public void Setup() {
		Room rr= new Room ();
		rr.Fix(this);
	}
}
class Room {
	public void Fix(Fan f) {
		f.on();
	}
}