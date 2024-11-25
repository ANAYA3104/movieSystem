package com.infosys.movieSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Movie {

    @Id
    private String movieId;
    private String movieName;
    private String language;
    private Integer duration; 
    private Double ratings; 
    private String genre;

    
    public Movie() {
        super();
    }

    public Movie (String movieId) {
    	super();
    	this.movieId=movieId;
    }

    public Movie(String movieId,String movieName,String genre,Integer duration,Double ratings,String language) {
        super();
        this.movieId = movieId;
        this.movieName = movieName;
        this.duration = duration;
        this.ratings =ratings;
        this.genre =genre;
        this.language=language;
    }

  
   

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Double getRatings() {
        return ratings;
    }

    public void setRatings(Double ratings) {
        this.ratings = ratings;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
    
    @Override
   	public String toString() {
   		return "Movie [movieId=" + movieId + ", movieName=" + movieName + ", language=" + language + ", duration="
   				+ duration + ", ratings=" + ratings + ", genre=" + genre + "]";
   	}
}
