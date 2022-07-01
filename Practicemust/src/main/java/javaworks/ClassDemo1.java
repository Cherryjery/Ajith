package javaworks;

public class ClassDemo1 
{
	public static void main(String[] args)
	{
		
		
		Bank input = new Bank ();
		System.out.println(input.getName());
		
		input.depositCash(999);
		
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
				return  ;	
			}
		}

	
