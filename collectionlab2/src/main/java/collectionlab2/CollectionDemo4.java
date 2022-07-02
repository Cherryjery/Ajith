package collectionlab2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class Person {

    String fname;
    String lname;
    int age;

    public Person() {
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public Person(String fname, String lname, int age) {
        this.fname = fname;
        this.lname = lname;
        this.age = age;
    }

    @Override
    public String toString() {
        return fname + "," + lname + "," + age;
    }
}

public class CollectionDemo4{

    public static void main(String[] args) {
        List<Person> persons = new ArrayList<Person>();
        persons.add(new Person("ajith", "def3", 10));
        persons.add(new Person("abc2", "def2", 32));
        persons.add(new Person("abc1", "def1", 65));
        persons.add(new Person("abc4", "def4", 10));
        System.out.println(persons);
        Collections.sort(persons, new Comparator<Person>() {

            @Override
            public int compare(Person t, Person t1) {
                return t.getAge() - t1.getAge();
            }
        });
        System.out.println(persons);

    }
}