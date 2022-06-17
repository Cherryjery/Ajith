package secondlevel;

public class GenericsDemo {
	public static void main(String[] args) {
		GoodPaintBrushVer3<Air> gp3=new GoodPaintBrushVer3<>();
		Air dryair=new Air();
		
		gp3.setObj(dryair);
		dryair.dusting();
	}
}
class Water{
	public void sprinkle() {
		System.out.println("water is sprinkled..");
	}
}
class Air{
	public void dusting() {
		System.out.println("dusting............");
	}
}

class GoodPaintBrushVer3<T>{
	private T obj;
	public T getObj() {
		return this.obj;
	}
	public void setObj(T obj) {
		this.obj=obj;
	}
}