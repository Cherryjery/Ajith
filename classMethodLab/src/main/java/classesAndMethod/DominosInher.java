package classesAndMethod;

public class DominosInher {

	public static void main(String[] args) {
		Dominos doi = new AdiPizaa ();
		doi.sellpizza();
	}

}
abstract class Dominos{
	private void makeDough(){
	System.out.println("dough made as per domo logic...... ");	
	}
	private void bakePizza() {
		System.out.println("pizza baked...... ");
	}
	private void toppings() {
		System.out.println("toppings are added.....");
	}
	private void packed() {
		System.out.println("pizaaa packedddd.......");
	}
	final public void makePizaa() {
		makeDough();
		bakePizza();
		toppings();
		packed();
		
		}
	final public void sellpizza() {
		collectmoney();
		makePizaa();
		delivery();
	}
	public abstract void delivery();
	public abstract void  collectmoney();
}

class AdiPizaa extends Dominos{
	@Override
	public void collectmoney() {
		System.out.println("money is collected ");
		
	}
	@Override
	public void delivery() {
	System.out.println("pizaaa deliveryed");
		
	}
}





