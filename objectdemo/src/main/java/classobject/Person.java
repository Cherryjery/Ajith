package classobject;

class Person 
{
   Person(String name, int PAN)
  {
    System.out.println("Name of person = "+name);
    System.out.println("PAN card details = "+PAN);
  }
  
  Person(int voterId, String name)
  {
    System.out.println("Name of person = "+name );
    System.out.println("Voter ID of " +name+ " = "+ voterId);
  }
  
  public static void main (String [] args) 
  {
      // If user has name and PAN card details then perform some action
      Person person1 = new Person("Ravi", 0001112);
      // If user has name and voter ID then perform some action
      Person person2 = new Person(12345678, "Ram");
  }
}
