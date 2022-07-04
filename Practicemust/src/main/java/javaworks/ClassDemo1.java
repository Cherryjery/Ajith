package javaworks;

public class ClassDemo1 
{
	public static void main(String[] args)
	{
		
		
		Bank input = new Bank ();
		
		System.out.println(input.depositCash(1200));
		System.out.println(input.getName());
	}
}
class Bank 
		{
			
			boolean depositCash(int amt)
			{
				if (amt>1000) 
				{
				
					return true;
					
				}
				else 
				{
					
					return false;
				}
			}
			String getName() {
				return "ram";
			}
		}

	
