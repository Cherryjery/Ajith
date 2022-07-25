package classesAndMethod;

public class ClassTemplate {

	public static void main(String[] args) {
		house h=new Myhouse();
		h.buildhouse();
		
		h=new myhouse2();
		h.buildhouse();

	}

}
abstract class house
{
	public final void buildhouse()
	{
		buildfoundation();
		buildpillor();
		buildwalls();
		buildwindows();
		
}
	private void buildwindows()
	{
		System.out.println("Build windows");
	}
	public abstract void buildfoundation();
	public abstract void buildwalls();
	private void buildpillor()
	{
		System.out.println("build pillor");
	}
	
}
class Myhouse extends house
{
	@Override
	public void buildfoundation() {
		// TODO Auto-generated method stub
		
	}@Override
	public void buildwalls() {
		// TODO Auto-generated method stub
		
	}
}
class myhouse2 extends house
{
	@Override
	public void buildfoundation() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void buildwalls() {
		// TODO Auto-generated method stub
		
	}
}
