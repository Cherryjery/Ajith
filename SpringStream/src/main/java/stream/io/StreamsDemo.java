package stream.io;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

public class StreamsDemo {
public static void main(String[] args) {
	List<Movie> moivelist= Arrays.asList(new Movie ("Aniyan",2006,"vikram"),new Movie ("Avengers",2012,"Superhero"),
			                           new Movie("Love and Thunder", 2022, "Chris"),new Movie("IronMan", 2006, "robert"));
//	Stream<Movie> moiveStream=moivelist.stream();
//	Stream<Movie> moiveFliter=moiveStream.filter(m->m.getYear()==2022);
//	Stream <String>mapStream= moiveFliter.map(m->m.getName());
//	mapStream.forEach(System.out::print);
	
	moivelist.stream().filter(m->m.getActor()=="Chris").filter(m->m.getYear()==2022).map(m->m.getName()).forEach(System.out::println);
	
	
}
}
