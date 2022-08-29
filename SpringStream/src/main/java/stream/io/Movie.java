package stream.io;

public class Movie {
private String name;
private Integer year;
private String actor;
public Movie(String name, int year, String actor) {
	this.name = name;
	this .year= year;
	this.actor=actor;
	
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Integer getYear() {
	return year;
}
public void setYear(Integer year) {
	this.year = year;
}
public String getActor() {
	return actor;
}
public void setActor(String actor) {
	this.actor = actor;
}
}
