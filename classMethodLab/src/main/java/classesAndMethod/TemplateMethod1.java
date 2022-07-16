package classesAndMethod;

public class TemplateMethod1 {
	
		public static void main(String[] args) {			
			Template houseType = new WoodenHouse();
			
			//using template method
			houseType.buildHouse();
//			System.out.println("************");
//			
//			houseType = new GlassHouse();
//			
//			houseType.buildHouse();
		}	
}
//abstract class HouseTemplate {
	//template method, final so subclasses can't override
	
	//default implementation
//	private void buildWindows() {
//		System.out.println("Building Glass Windows");
//	}
//	//methods to be implemented by subclasses
//	public abstract void buildWalls();
//	public abstract void buildPillars();
//	private void buildFoundation() {
//		System.out.println("Building foundation with cement,iron rods and sand");
//	}
//}
class GlassHouse extends Template {
	@Override
	public void buildWalls() {
		System.out.println("Building Glass Walls");
	}
	@Override
	public void buildPillars() {
		System.out.println("Building Pillars with glass coating");
	}
}
class WoodenHouse extends Template {
	@Override
	public void buildWalls() {
		System.out.println("Building Wooden Walls");
	}
	@Override
	public void buildPillars() {
		System.out.println("Building Pillars with Wood coating");
	}
}
abstract class Template{
	public final void buildHouse(){
		buildFoundation();
		buildPillars();
		buildWalls();
		buildWindows();
		System.out.println("House is built.");}
		private void buildWindows() {
			System.out.println("Building Glass Windows");
		}
		//methods to be implemented by subclasses
		public abstract void buildWalls();
		public abstract void buildPillars();
		private void buildFoundation() {
			System.out.println("Building foundation with cement,iron rods and sand");
		}
	}

