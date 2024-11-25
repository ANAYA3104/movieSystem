package com.infosys.movieSystem.dao;

import java.util.List;

import com.infosys.movieSystem.bean.MovieUser;

public interface MovieUserDao {
	
	public void save(MovieUser movieUser);
	public List<MovieUser> displayAll();
	public MovieUser findById(String username);
}

