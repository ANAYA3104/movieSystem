package com.infosys.movieSystem.bean;

//import org.springframework.data.annotation.Id;

import jakarta.persistence.Id;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

//import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import jakarta.persistence.Entity;
@Entity

public class MovieUser extends User implements Serializable {
	private static final long serialVersionUID=1L;
	@Id
	private String username;
	private String password;
	private String name;
	private String email;
	private String role;
	public MovieUser() {
		super("abc","pqr",new ArrayList<>());
		// TODO Auto-generated constructor stub
	}
	public MovieUser(String username, String password, Collection<? extends GrantedAuthority> authorities,
			 String name, String email, String role) {
		super(username, password, authorities);
		this.username = username;
		this.password = password;
		this.name = name;
		this.email = email;
		this.role = role;
	}
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	@Override
	public String toString() {
		return "MovieUser [username=" + username + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", role=" + role + "]";
	}
	
	
	
	

}
