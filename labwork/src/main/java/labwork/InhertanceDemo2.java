package labwork;

public class InhertanceDemo2 {

	public static void main(String[] args) {
		AjithPlug indianPlug = new AjithPlug();
		indianPlug.roundPin();
	}

}
abstract class IndianPlug{
	public abstract void roundPin ();
	
}
abstract class IndianSocket{
	public abstract void roundPinHole(IndianPlug ip);
}
abstract class AmericanPlug{
	public abstract void slabpin();
	
}
abstract class AmericanSocket{
	public abstract void slabpinHole(AmericanPlug ap);	
}

class AjithPlug extends IndianPlug{
	public void roundPin() {
		System.out.println("Ajith plug working in indian ");
	}
}
class AjithSocket extends IndianSocket {
	public void roundPinHole(IndianPlug ip) {
		ip.roundPin();
	}
}