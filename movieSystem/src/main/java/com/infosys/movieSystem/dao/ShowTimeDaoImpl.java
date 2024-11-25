package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.movieSystem.bean.ShowTime;

 
@Service
@Repository
public class ShowTimeDaoImpl implements ShowTimeDao {
	
	@Autowired
	public ShowTimeRepository repository;

	@Override
	public void save(ShowTime showTime) {
		repository.save(showTime);
	}

	@Override
	public Integer generateShowTimeId() {
		Integer newId=repository.getLastId();
		if(newId==null) {
			newId=1;
		}
		else {
			newId=newId+1;
		}
		return newId;
	}
 
	@Override 
	public ShowTime findById(Integer Id) {
		return repository.findById(Id).get();
	}

	@Override
	public List<ShowTime> findAll() {
		return repository.findAll(); 
	}

	@Override
	public void deleteShowTimeById(Integer Id) {
		repository.deleteById(Id);
	}
	
	@Override
	public List<Integer> getAllIds() {
	    return repository.getAllShowTimeIds();
	}
	
	/*public void updateShowTime(ShowTime showTime) {
		repository.save(showTime);
	}*/
	
	@Override
	public void updateShowTime(ShowTime showTime) {
		repository.save(showTime);
	}
	
	@Override
	public String getShowTimeName(Integer showTimeId) {
		return repository.getShowTimeName(showTimeId);
	}
	
	@Override
	public ShowTime getShowTime(String showTimeName) {
		return repository.getShowTime(showTimeName);
	}


	
	
	

}
