package com.example.demo;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class ClientDTO {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private long id;

private String username;

private String emailid;
private String password;
private String phonenumber;
private String city;
private int flag ;
private String image;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public int getFlag() {
	return flag;
}
public void setFlag(int flag) {
	this.flag = flag;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}


}
