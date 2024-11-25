package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.movieSystem.bean.MovieUser;

@Service
@Repository

public class MovieUserDaoImpl implements MovieUserDao {

	
	@Autowired
	
	public MovieUserRepository repository;
	
	@Override
	public void save(MovieUser movieUser) {
		repository.save(movieUser);

	}

	@Override
	public List<MovieUser> displayAll() {
		return repository.findAll();
	}

	@Override
	public MovieUser findById(String username) {
		return repository.findById(username).get();
	}
	

}
