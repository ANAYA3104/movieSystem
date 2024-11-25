package com.infosys.movieSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;
import java.util.Set;

import com.infosys.movieSystem.bean.Movie;

public interface MovieRepository extends JpaRepository<Movie,String> {

    @Query("SELECT max(m.movieId) FROM Movie m")
    public String getLastId();

    /*@Query("SELECT a FROM Movie a WHERE m.language = ?1") 
    public List<Movie> getLanguageWiseMovieList(@Param("language") String language);*/
    
    @Query("select a from Movie a where language = ?1")
	public List<Movie> getLanguagewiseMovieList(String language);
    
    @Query("select language from Movie ")
    public Set<String>getAllLanguage();
}
