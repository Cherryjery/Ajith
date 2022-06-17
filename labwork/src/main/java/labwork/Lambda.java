package labwork;

interface Pubg {
	void game ();
}
public class Lambda {

	public static void main(String[] args) {
		Pubg player = ( )->{ System.out.println("Pubg player are more ");
			
		};
		player.game();
	}

}


//multiple expression
