package classesAndMethod;

public class Comand {

	public static void main(String[] args) {
		UniversalRemote.useRemote();
}
	class UniversalRemote{
		public static void useRemote() {
			Tv tv=new Tv();
			SetTopBox setTopBox=new SetTopBox();
			NetFlix netFlix=new NetFlix();
			SoundSystem soundSystem=new SoundSystem();
		}
	}

}
class Tv {
	public void switchOn(){
		System.out.println("tv switched on....");

	}
	public void av() {
		System.out.println("tv switched to av1 mode...");
	}
	
}
class SetTopBox {
	public void newschannel() {
		System.out.println("news channel started.....");

	}
	public void serialchannel() {
		System.out.println("serial channnel.....");
	}
}
class Netflix {
	public void moiveOld() {
		System.out.println("old movie started....");

	}
}
class SoundSystem{
	public void lowSound() {
		System.out.println("sound volume....decreased....");

	}
}




