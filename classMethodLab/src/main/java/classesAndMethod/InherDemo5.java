package classesAndMethod;

public class InherDemo5 {

	public static void main(String[] args) {
		IndianPlug plug=new MaddyPlug();
		IndianSocket socket= new MaddySocket();
		socket.Roundpinhole(plug);
		AmericanPlug plugg= new LenovoAdapter();
		IndianAdapater ad = new IndianAdapater(plugg);
		socket.Roundpinhole(ad);
	}
}
abstract class IndianPlug{
	public abstract void roundpin();
}
abstract class IndianSocket{
	public abstract void Roundpinhole(IndianPlug ip);
}
abstract class AmericanPlug{
	public abstract void slabpin();
}
abstract class AmericanSocket{
	public abstract void Americanslabpinhole(AmericanPlug ap);
}
class MaddyPlug extends IndianPlug{
	@Override
	public void roundpin() {
System.out.println("Maddy plug workeddddd..........");		
	}
}
class MaddySocket extends IndianSocket{
	@Override
	public void Roundpinhole(IndianPlug ip) {
		ip.roundpin();
		
	}
}

class IndianAdapater extends IndianPlug{
	AmericanPlug ap;
	public IndianAdapater(AmericanPlug ap) {
		this.ap= ap;
		
		}
	
	@Override
	public void roundpin() {
		ap.slabpin();
		
	}
}

class LenovoAdapter extends AmericanPlug{
	@Override
	public void slabpin() {
		System.out.println("american slab pin worked");
		
	}
	
}