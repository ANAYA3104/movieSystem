package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.ShowTime;

@Repository
public interface ShowTimeRepository extends JpaRepository<ShowTime, Integer> {

	@Query("SELECT max(showTimeId) from ShowTime")
	public Integer getLastId();
	
	@Query("select showTimeId from ShowTime")
	List<Integer> getAllShowTimeIds();
	
	@Query("SELECT showTimeName from ShowTime where showTimeId=?1")
	public String getShowTimeName(Integer showTimeId);
	
	@Query("SELECT a from ShowTime a where showTimeName=?1")
	public ShowTime getShowTime(String showTimeName);
}
